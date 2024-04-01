import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_event.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/bloc/bottom_nav_bar_cubit_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/common/routes/app_router.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UrbanApp extends StatelessWidget {
  const UrbanApp({required this.themeData, super.key});
  final ThemeData themeData;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<AppBloc>()
            ..add(const UrbanWordEvent.tryGetLocalDataStorage()),
        ),
        BlocProvider(
          create: (context) => di.sl<BottomNavBarCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: themeData,
        routerConfig: AppRouter.routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
