import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_event.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_state.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/get_local_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/random_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/save_local_urban_word.dart';
import 'package:logger/logger.dart';

class AppBloc extends Bloc<UrbanWordEvent, UrbanWordState> {
  AppBloc(
    this._getLocalUrbanWord,
    this._randomUrbanWord,
    this._saveLocalUrbanWord,
  ) : super(const UrbanWordState.initial()) {
    on<TryGetLocalDataStorage>(_onTryGetLocalDataStorage);
    on<TryGetFirstRandomUrbanWords>(_onTryGetFirstRandomUrbanWords);
  }

  final GetLocalUrbanWord _getLocalUrbanWord;
  final RandomUrbanWord _randomUrbanWord;
  final SaveLocalUrbanWord _saveLocalUrbanWord;

  FutureOr<void> _onTryGetLocalDataStorage(
      TryGetLocalDataStorage event, Emitter<UrbanWordState> emit) async {
    emit(const LoadingLocal());
    di.sl.get<Logger>().i('Emit Loading Local');
    final localResult = await _getLocalUrbanWord.call();
    localResult.fold((failure) {
      emit(LoadLocalFailed(failure));
      di.sl.get<Logger>().i('Emit Load Local Failed');
    }, (urbanWords) {
      emit(LoadedData(urbanWords));
      di.sl.get<Logger>().i('Emit Loaded Data');
    });
  }

  FutureOr<void> _onTryGetFirstRandomUrbanWords(
      TryGetFirstRandomUrbanWords event, Emitter<UrbanWordState> emit) async {
    emit(const LoadingRandom());
    di.sl.get<Logger>().i('Emit Loading Random');
    final randomResult = await _randomUrbanWord.call();
    randomResult.fold(
      (failure) {
        emit(InitFailed(failure));
        di.sl.get<Logger>().i('Emit Init Failed');
      },
      (urbanWords) {
        _saveLocalUrbanWord.call(urbanWords);
        di.sl.get<Logger>().i('Save Gotten Data To Local');
        emit(LoadedData(urbanWords));
        di.sl.get<Logger>().i('Emit Loaded Data');
      },
    );
  }
}
