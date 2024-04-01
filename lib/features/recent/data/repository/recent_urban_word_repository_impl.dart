import 'dart:io';

import 'package:com_lvoxx_urban_dictionary/core/error/exception.dart';
import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/data/data_sources/local/recent_urban_word_local_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/repository/recent_urban_word_repository.dart';
import 'package:dartz/dartz.dart';

class RecentUrbanWordRepositoryImpl extends RecentUrbanWordRepository {
  const RecentUrbanWordRepositoryImpl({
    required this.loadRecent,
  });
  final RecentUrbanWordLocalDatasource loadRecent;

  @override
  ResultFuture<List<RecentSearch>> loadRecentSearch() async {
    late final List<RecentSearch> localSearch;
    try {
      localSearch = await loadRecent.getRecentSearch();
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          httpStatus: HttpStatus.notFound,
        ),
      );
    }
    return Right(localSearch);
  }

  @override
  ResultVoid saveNewRecentSearch(RecentSearch newRecentSearch) async {
    await loadRecent.saveNewRecentSearch(newRecentSearch);
    return const Right(Future.value);
  }
}
