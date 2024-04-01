import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_search_event.freezed.dart';

@freezed
class RecentSearchEvent with _$RecentSearchEvent {
  const factory RecentSearchEvent.saveNewRecentSearchEvent(
    RecentSearch recentSearch,
  ) = SaveNewRecentSearchEvent;
  const factory RecentSearchEvent.getAllRecentSearchEvent() =
      GetAllRecentSearchEvent;
  const factory RecentSearchEvent.getRandomRecentSearchEvent() =
      GetRandomRecentSearchEvent;
}
