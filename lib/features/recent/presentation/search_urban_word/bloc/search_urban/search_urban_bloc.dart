import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_state.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/search_urban_word.dart';
import 'package:logger/logger.dart';

class SearchUrbanBloc extends Bloc<SearchUrbanEvent, SearchUrbanState> {
  SearchUrbanBloc({required SearchUrbanWord searchUrbanWord})
      : _searchUrbanWord = searchUrbanWord,
        super(const InitSearchUrbanState()) {
    on<GetUrbanWordByWord>(_onGetUrbanWordByWord);
  }

  final SearchUrbanWord _searchUrbanWord;

  FutureOr<void> _onGetUrbanWordByWord(
    GetUrbanWordByWord event,
    Emitter<SearchUrbanState> emit,
  ) async {
    emit(const LoadingSearchUrbanState());
    di.sl.get<Logger>().i('Emit Loading Search Urban State');
    final result = await _searchUrbanWord.call(event.word);
    result.fold(
      (failure) {
        emit(LoadedFailedSearchUrbanState(failure));
        di.sl.get<Logger>().i('Emit Loaded Failed Search Urban State');
      },
      (urbanWords) {
        emit(LoadedSearchUrbanState(urbanWords));
        di.sl.get<Logger>().i('Emit Loaded Search Urban Statea');
      },
    );
  }
}
