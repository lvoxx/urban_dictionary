import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart'
    as app_info;
import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart'
    as app_str;
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_state.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_state.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/hint_buttons/hint_buttons_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/search_field/search_field_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/views/recent_search_textbutton_wrap.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/widgets/skeleton_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/views/urban_word_card.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/widget/urban_word_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({required FocusNode focusNode, super.key})
      : _focusNode = focusNode;
  final FocusNode _focusNode;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with AutomaticKeepAliveClientMixin {
  late SearchFieldCubit _searchFieldCubit;
  late TextEditingController _searchController;
  late FocusNode _focusNode;
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    _searchFieldCubit = BlocProvider.of<SearchFieldCubit>(context);
    _searchController = TextEditingController();
    _focusNode = widget._focusNode;
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // SearchUrbanBloc render [Search Result]
    return BlocBuilder<SearchUrbanBloc, SearchUrbanState>(
      builder: (context, searchUrbanState) {
        // RecentSearchBloc render [Recent Search Text Field Wrap]
        return BlocConsumer<RecentSearchBloc, RecentSearchState>(
          builder: (context, recentButtonsState) {
            // HintButtonCubit render [Recent Search Button hint]
            return BlocBuilder<HintButtonCubit, List<bool>>(
              builder: (context, buttonsState) {
                // SearchFieldCubit render text in [TextFormField]
                return BlocBuilder<SearchFieldCubit, bool>(
                  builder: (context, isFocused) {
                    return SafeArea(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Describe [Recent Search]
                            // And [Search Urban] behavior
                            FocusScope(
                              child: Focus(
                                onFocusChange: (focus) {
                                  if (focus) {
                                    _searchFieldCubit.focusSearchField();
                                    _focusNode.requestFocus();
                                  } else {
                                    _searchFieldCubit.unfocusSearchField();
                                    _focusNode.unfocus();
                                  }
                                },
                                child: TextField(
                                  focusNode: _focusNode,
                                  controller: _searchController,
                                  onSubmitted: (searchText) {
                                    if (searchText.isEmpty) {
                                      _searchFieldCubit.unfocusSearchField();
                                      return;
                                    }
                                    _searchFieldCubit.unfocusSearchField();
                                    // Search Urban Word From Given Text
                                    BlocProvider.of<SearchUrbanBloc>(context)
                                        .add(GetUrbanWordByWord(searchText));
                                    // Save New Recent Search To Local
                                    BlocProvider.of<RecentSearchBloc>(context)
                                        .add(
                                      SaveNewRecentSearchEvent(
                                        RecentSearch(recentSearch: searchText),
                                      ),
                                    );
                                    // Push First Button To Active
                                    BlocProvider.of<HintButtonCubit>(context)
                                        .assignSuperState();
                                    di.sl
                                        .get<Logger>()
                                        .d('On Save Search Text');
                                  },
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Search Urban Word',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // [Recent Search] render
                            recentButtonsState.whenOrNull(
                                  loadedRecentSearch: (recentSearchList) =>
                                      RecentSearchTextButtonIcon(
                                    recentSearchWord: recentSearchList
                                        .map((e) => e.recentSearch)
                                        .toList(),
                                    searchController: _searchController,
                                    isFocused: isFocused,
                                  ),
                                ) ??
                                (isFocused
                                    ? const Text(app_info.warningText)
                                    : const SizedBox()),
                            SizedBox(
                              height: isFocused ? 10 : 0,
                            ),
                            // [Search Urban] render
                            searchUrbanState.whenOrNull(
                                  loadingSearchUrbanState: () => Expanded(
                                    child: ListView.separated(
                                      itemCount: 3,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                          const SkeletonSearch(),
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(height: 15),
                                    ),
                                  ),
                                  loadedSearchUrbanState: (urbanWords) =>
                                      Expanded(
                                    child: UrbanWordListView(
                                      itemToBuild: (context, index) =>
                                          UrbanWordCard(
                                        urbanWord: urbanWords[index],
                                      ),
                                      itemToSeperate: (context, index) =>
                                          const SizedBox(
                                        height: 15,
                                      ),
                                      itemCount: urbanWords.length,
                                    ),
                                  ),
                                  loadFailedSearchUrbanState: (failure) =>
                                      Expanded(
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            'assets/png/no_search_result_found.png',
                                            width: 400,
                                          ),
                                          Text(
                                            app_str.noSearchResult,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ) ??
                                const SizedBox(),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            );
          },
          listener: (context, state) {
            state.whenOrNull(
              noResultRecentSearch: (failure) => context
                  .read<RecentSearchBloc>()
                  .add(const GetRandomRecentSearchEvent()),
              savedNewRecentSearch: () => context
                  .read<RecentSearchBloc>()
                  .add(const GetAllRecentSearchEvent()),
            );
          },
        );
      },
    );
  }
}
