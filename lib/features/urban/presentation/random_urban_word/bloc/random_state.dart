import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';

part 'random_state.freezed.dart';

@freezed
class RandomState with _$RandomState {
  const factory RandomState.startLoadRandomState() = StartLoadRandomState;
  const factory RandomState.loadingRandomState() = LoadingRandomState;
  const factory RandomState.loadedRandomState(List<UrbanWord> urbanWords) =
      LoadedRandomState;
  const factory RandomState.loadFailedRandomState(Failure failure) =
      LoadFailedRandomState;
}
