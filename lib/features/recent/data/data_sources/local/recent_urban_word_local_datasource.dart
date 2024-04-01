import 'dart:async';

import 'package:com_lvoxx_urban_dictionary/core/error/exception.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

sealed class RecentUrbanWordLocalDatasource {
  Future<List<RecentSearch>> getRecentSearch();
  Future<Iterable<int>> saveNewRecentSearch(RecentSearch recentSearch);
}

class RecentUrbanWordLocalDatasourceImpl
    implements RecentUrbanWordLocalDatasource {
  RecentUrbanWordLocalDatasourceImpl()
      : _recentSearchBoxFuture = di.sl.getAsync<Box<RecentSearch>>();
  final Future<Box<RecentSearch>> _recentSearchBoxFuture;
  @override
  Future<List<RecentSearch>> getRecentSearch() async {
    final recentSearchBox = await _recentSearchBoxFuture;
    final localData = recentSearchBox.values.toList();
    di.sl.get<Logger>().d(localData);
    if (localData.isEmpty) throw const CacheException('No such local data');
    return Future.value(localData);
  }

  @override
  Future<Iterable<int>> saveNewRecentSearch(RecentSearch recentSearch) async {
    final recentSearchBox = await _recentSearchBoxFuture;
    final newRecentList = recentSearchBox.values.toList();

    recentSearch.recentSearch.trim();
    final presentIndex = newRecentList.indexOf(recentSearch);
    if (presentIndex != -1) {
      newRecentList.removeAt(presentIndex);
    }

    // Insert new search to the list head.
    newRecentList.insert(0, recentSearch);

    // Override All Data
    await recentSearchBox.clear();
    return recentSearchBox.addAll(newRecentList);
  }
}
