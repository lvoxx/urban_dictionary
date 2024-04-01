import 'dart:io';
import 'dart:math';

import 'package:com_lvoxx_urban_dictionary/core/error/exception.dart';
import 'package:com_lvoxx_urban_dictionary/core/error/failure.dart';
import 'package:com_lvoxx_urban_dictionary/core/network/network_info.dart';
import 'package:com_lvoxx_urban_dictionary/core/random/random_words.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/params.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/data/data_sources/local/urban_word_local_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/data/data_sources/remote/urban_word_remote_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/repositories/urban_word_repository.dart';
import 'package:dartz/dartz.dart';

class UrbanWordRepositoryImpl implements UrbanWordRepository {
  const UrbanWordRepositoryImpl({
    required this.localDataSource,
    required this.remoteDatasource,
    required this.networkInfo,
  });
  final UrbanWordLocalDataSource localDataSource;
  final UrbanWordRemoteDatasource remoteDatasource;
  final NetworkInfo networkInfo;

  @override
  ResultFuture<List<UrbanWord>> randomUrbanWord() async {
    if (!await networkInfo.isConnected) {
      return const Left(
        NetworkFailure(
          message: 'No network connection',
          httpStatus: HttpStatus.notFound,
        ),
      );
    }
    try {
      final randomIndex = Random().nextInt(urbanWords.length);
      final result = await remoteDatasource
          .getUrbanWords(UrbanWordParam(param: urbanWords[randomIndex]));
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          httpStatus: HttpStatus.notFound,
        ),
      );
    }
  }

  @override
  ResultFuture<List<UrbanWord>> searchUrbanWord(String query) async {
    try {
      final result =
          await remoteDatasource.getUrbanWords(UrbanWordParam(param: query));
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          httpStatus: HttpStatus.notFound,
        ),
      );
    }
  }

  @override
  ResultFuture<List<UrbanWord>> getLocalUrbanWord() async {
    late final List<UrbanWord> localResult;
    try {
      localResult = await localDataSource.getAllUrbanWords();
    } on CacheException catch (e) {
      return Left(
        CacheFailure(
          message: e.message,
          httpStatus: HttpStatus.notFound,
        ),
      );
    }
    return Right(localResult);
  }

  @override
  ResultVoid saveLocalUrbanWord(List<UrbanWord> urbanWords) async {
    if (await localDataSource.clearUrbanWords() == -1) {
      return const Left(
        CacheFailure(
          message: 'Can not connect to local store',
          httpStatus: HttpStatus.forbidden,
        ),
      );
    }
    await localDataSource.saveUrbanWords(urbanWords);
    return const Right(Future.value);
  }
}
