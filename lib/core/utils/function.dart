import 'dart:math';

import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';

List<RecentSearch> findRandomRecentSearch({
  required List<String> list,
  required int count,
}) {
  final random = Random();
  final selectedIndices = <int>{};

  count = min(count, list.length);

  while (selectedIndices.length < count) {
    selectedIndices.add(random.nextInt(list.length));
  }

  // Retrieve elements based on random indices
  return selectedIndices
      .map((index) => RecentSearch(recentSearch: list[index]))
      .toList();
}
