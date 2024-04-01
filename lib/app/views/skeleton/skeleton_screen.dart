import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/bloc/bottom_nav_bar_cubit_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/hint_buttons/hint_buttons_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/search_field/search_field_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/views/search_screen.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/views/random_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

class SkeletonScreen extends StatefulWidget {
  const SkeletonScreen({super.key});

  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  late PageController _pageController;
  late ScrollController _scrollController;
  late FocusNode _focusNode;
  final List<IconData> _icons = [
    Icons.search,
    Icons.shuffle,
  ];
  late List<UrbanWord> loadedUrbanWords;

  late List<Widget> _bottomBarViews = [];

  @override
  void initState() {
    super.initState();

    BlocProvider.of<AppBloc>(context).state.whenOrNull(
          loadedData: (data) => loadedUrbanWords = data,
        );

    _pageController = PageController(
      initialPage: BlocProvider.of<BottomNavBarCubit>(context).state,
    );
    _focusNode = FocusNode();
    _scrollController = ScrollController();
    _bottomBarViews = [
      // SEARCH SCREEN
      MultiBlocProvider(
        providers: [
          BlocProvider<RecentSearchBloc>(
            create: (context) => di.sl.get<RecentSearchBloc>()
              ..add(const GetAllRecentSearchEvent()),
          ),
          BlocProvider<SearchFieldCubit>(
            create: (context) => di.sl.get<SearchFieldCubit>(),
          ),
          BlocProvider<HintButtonCubit>(
            create: (context) => di.sl.get<HintButtonCubit>(),
          ),
          BlocProvider<SearchUrbanBloc>(
            create: (context) => di.sl.get<SearchUrbanBloc>(),
          ),
        ],
        child: SearchScreen(
          focusNode: _focusNode,
        ),
      ),
      // RANDOM SCREEN
      BlocProvider<RandomBloc>(
        create: (context) => di.sl.get<RandomBloc>()
          ..add(LoadRandomWordsFromInitToScreenEvent(loadedUrbanWords)),
        child: RandomScreen(
          scrollController: _scrollController,
        ),
      ),
    ];
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, activeIndex) {
          return PageView(
            controller: _pageController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: _bottomBarViews,
            onPageChanged: (value) {
              context.read<BottomNavBarCubit>().moveToPage(value);
              _focusNode.unfocus();
            },
          );
        },
      ),
      extendBody: true,
      bottomNavigationBar: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, activeIndex) {
          return AnimatedBottomNavigationBar(
            icons: _icons,
            activeIndex: activeIndex,
            elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.defaultEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: (index) {
              if (index == 1) {
                _scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                di.sl.get<Logger>().i('Scroll to top of random page');
              }
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              context.read<BottomNavBarCubit>().moveToPage(index);
            },
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            activeColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            inactiveColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            shadow: const BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              color: Colors.white24,
            ),
            //other params
          );
        },
      ),
    );
  }
}
