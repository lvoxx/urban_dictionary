import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';

abstract class UrbanWordRepository {
  const UrbanWordRepository();

  ResultFuture<List<UrbanWord>> randomUrbanWord();

  ResultFuture<List<UrbanWord>> searchUrbanWord(String query);

  ResultFuture<List<UrbanWord>> getLocalUrbanWord();

  ResultVoid saveLocalUrbanWord(List<UrbanWord> urbanWords);
}
