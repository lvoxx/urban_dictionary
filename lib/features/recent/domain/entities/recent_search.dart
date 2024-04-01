import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'recent_search.freezed.dart';
part 'recent_search.g.dart';

@freezed
@HiveType(typeId: 1)
class RecentSearch extends HiveObject with _$RecentSearch {
  factory RecentSearch({
    @HiveField(0) required String recentSearch,
  }) = _RecentSearch;
  RecentSearch._();

  factory RecentSearch.fromJson(Map<String, dynamic> json) =>
      _$RecentSearchFromJson(json);

  static List<RecentSearch> fromJsonList(List<dynamic> jsonList) => List.from(
        jsonList.map(
          (urbanWord) =>
              RecentSearch.fromJson(urbanWord as Map<String, dynamic>),
        ),
      );
}
