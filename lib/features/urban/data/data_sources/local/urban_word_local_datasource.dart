import 'package:com_lvoxx_urban_dictionary/core/error/exception.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:hive_flutter/adapters.dart';

abstract class UrbanWordLocalDataSource {
  Future<List<UrbanWord>> getAllUrbanWords();
  Future<Iterable<int>> saveUrbanWords(List<UrbanWord> urbanWords);
  Future<int> saveUrbanWordItem(UrbanWord urbanWordItem);
  Future<int> clearUrbanWords();
}

class UrbanWordLocalDataSourceImpl implements UrbanWordLocalDataSource {
  UrbanWordLocalDataSourceImpl()
      : _urbanWordBoxFuture = di.sl.getAsync<Box<UrbanWord>>();
  final Future<Box<UrbanWord>> _urbanWordBoxFuture;

  @override
  Future<int> clearUrbanWords() async {
    final urbanWordBox = await _urbanWordBoxFuture;
    return urbanWordBox.clear(); // Assuming clear operation is successful
  }

  @override
  Future<List<UrbanWord>> getAllUrbanWords() async {
    final urbanWordBox = await _urbanWordBoxFuture;
    final localData = urbanWordBox.values.toList();
    if (localData.isEmpty) {
      throw const CacheException('No such local data: Urban Word');
    }
    return Future.value(localData);
  }

  @override
  Future<int> saveUrbanWordItem(UrbanWord urbanWordItem) async {
    final urbanWordBox = await _urbanWordBoxFuture;
    return urbanWordBox.add(urbanWordItem);
  }

  @override
  Future<Iterable<int>> saveUrbanWords(List<UrbanWord> urbanWords) async {
    final urbanWordBox = await _urbanWordBoxFuture;
    return urbanWordBox.addAll(urbanWords);
  }
}
