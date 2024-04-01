import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_urban_state.freezed.dart';

@freezed
class SearchUrbanState with _$SearchUrbanState {
  const factory SearchUrbanState.initSearchUrbanState() = InitSearchUrbanState;
  const factory SearchUrbanState.loadingSearchUrbanState() =
      LoadingSearchUrbanState;
  const factory SearchUrbanState.loadedSearchUrbanState(
    List<UrbanWord> urbanWords,
  ) = LoadedSearchUrbanState;
  const factory SearchUrbanState.loadFailedSearchUrbanState(Failure failure) =
      LoadedFailedSearchUrbanState;
}
