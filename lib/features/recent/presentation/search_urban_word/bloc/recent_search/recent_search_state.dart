import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_search_state.freezed.dart';

@freezed
class RecentSearchState with _$RecentSearchState {
  const factory RecentSearchState.initRecentSearch() = InitRecentSearchState;

  // Save
  const factory RecentSearchState.savingNewRecentSearch() =
      SavingNewRecentSearchState;
  const factory RecentSearchState.savedNewRecentSearch() =
      SavedNewRecentSearchState;
  const factory RecentSearchState.saveFailedNewRecentSearchState(
    Failure failure,
  ) = SaveFailedNewRecentSearchState;
  // Loading
  const factory RecentSearchState.loadingRecentSearch() =
      LoadingRecentSearchState;
  const factory RecentSearchState.loadingRandomRecentSearch() =
      LoadingRandomRecentSearch;
  const factory RecentSearchState.loadedRecentSearch(
    List<RecentSearch> recentSearchList,
  ) = LoadedRecentSearchState;

  // No Result
  const factory RecentSearchState.noResultRecentSearch(Failure failure) =
      NoResultRecentSearchState;
}
