import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/random_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/save_local_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_event.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_state.dart';
import 'package:logger/logger.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  RandomBloc(
    this._randomUrbanWord,
    this._saveLocalUrbanWord,
  ) : super(const RandomState.startLoadRandomState()) {
    on<LoadRandomWordsFromInitToScreenEvent>(
      _onLoadRandomWordsFromInitToScreenEvente,
    );
    on<LoadNewRandomWordsFromApiEvent>(_onLoadNewRandomWordsFromApiEvent);
  }
  final RandomUrbanWord _randomUrbanWord;
  final SaveLocalUrbanWord _saveLocalUrbanWord;

  FutureOr<void> _onLoadRandomWordsFromInitToScreenEvente(
    LoadRandomWordsFromInitToScreenEvent event,
    Emitter<RandomState> emit,
  ) {
    emit(const LoadingRandomState());
    di.sl.get<Logger>().i('Emit Loading Random State');
    emit(LoadedRandomState(event.urbanWords));
    di.sl.get<Logger>().i('Emit Loaded Random State');
  }

  FutureOr<void> _onLoadNewRandomWordsFromApiEvent(
    LoadNewRandomWordsFromApiEvent event,
    Emitter<RandomState> emit,
  ) async {
    emit(const RandomState.loadingRandomState());
    di.sl.get<Logger>().i('Emit Loading Random');
    final randomResult = await _randomUrbanWord.call();
    randomResult.fold(
      (failure) {
        emit(LoadFailedRandomState(failure));
        di.sl.get<Logger>().i('Emit Init Failed');
      },
      (urbanWords) {
        _saveLocalUrbanWord.call(urbanWords);
        di.sl.get<Logger>().i('Save Gotten Data To Local');
        emit(LoadedRandomState(urbanWords));
        di.sl.get<Logger>().i('Emit Loaded Data');
      },
    );
  }
}
