import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:com_lvoxx_urban_dictionary/core/random/random_words.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/core/utils/function.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/usecases/load_recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/usecases/save_new_recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_state.dart';
import 'package:logger/logger.dart';

class RecentSearchBloc extends Bloc<RecentSearchEvent, RecentSearchState> {
  RecentSearchBloc(this._loadRecentSearch, this._saveNewRecentSearch)
      : super(const InitRecentSearchState()) {
    on<SaveNewRecentSearchEvent>(_onSaveNewRecentSearch);
    on<GetAllRecentSearchEvent>(_onGetAllRecentSearchEvent);
    on<GetRandomRecentSearchEvent>(_onGetRandomRecentSearchEvent);
  }

  final LoadRecentSearch _loadRecentSearch;
  final SaveNewRecentSearch _saveNewRecentSearch;

  FutureOr<void> _onSaveNewRecentSearch(
    SaveNewRecentSearchEvent event,
    Emitter<RecentSearchState> emit,
  ) async {
    emit(const SavingNewRecentSearchState());
    di.sl.get<Logger>().i('Emit Saving New Recent Search State');
    final result = await _saveNewRecentSearch.call(event.recentSearch);
    result.fold(
      (failure) {
        emit(SaveFailedNewRecentSearchState(failure));
        di.sl.get<Logger>().i('Emit Save Failed New Recent Search State');
      },
      (value) {
        emit(const SavedNewRecentSearchState());
        di.sl.get<Logger>().i('Emit Saved New Recent Search State');
      },
    );
  }

  FutureOr<void> _onGetAllRecentSearchEvent(
    GetAllRecentSearchEvent event,
    Emitter<RecentSearchState> emit,
  ) async {
    emit(const LoadingRecentSearchState());
    final result = await _loadRecentSearch.call();
    result.fold((failure) {
      emit(NoResultRecentSearchState(failure));
      di.sl.get<Logger>().i('Emit No Result Recent Search State');
    }, (recentSearch) {
      emit(LoadedRecentSearchState(recentSearch));
      di.sl.get<Logger>().i('Emit Loaded Recent Search State');
    });
  }

  FutureOr<void> _onGetRandomRecentSearchEvent(
    GetRandomRecentSearchEvent event,
    Emitter<RecentSearchState> emit,
  ) {
    emit(const LoadingRandomRecentSearch());
    final result = findRandomRecentSearch(list: urbanWords, count: 5);
    emit(LoadedRecentSearchState(result));
  }
}
