import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/usecase.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/repository/recent_urban_word_repository.dart';

class SaveNewRecentSearch extends UsecaseWithParams<void, RecentSearch> {
  const SaveNewRecentSearch({
    required RecentUrbanWordRepository recentUrbanWordRepository,
  }) : _recentUrbanWordRepository = recentUrbanWordRepository;

  final RecentUrbanWordRepository _recentUrbanWordRepository;

  @override
  ResultFuture<void> call(RecentSearch params) async =>
      _recentUrbanWordRepository.saveNewRecentSearch(params);
}
