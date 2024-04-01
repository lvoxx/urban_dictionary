import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/usecase.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/repositories/urban_word_repository.dart';

class SaveLocalUrbanWord extends UsecaseWithParams<void, List<UrbanWord>> {
  const SaveLocalUrbanWord({required UrbanWordRepository repository})
      : _repository = repository;
  final UrbanWordRepository _repository;

  @override
  ResultFuture<void> call(List<UrbanWord> params) async =>
      _repository.saveLocalUrbanWord(params);
}
