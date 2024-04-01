import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/core/utils/usecase.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/repository/recent_urban_word_repository.dart';

class LoadRecentSearch implements UsecaseWithoutParams<List<RecentSearch>> {
  const LoadRecentSearch({
    required RecentUrbanWordRepository recentUrbanWordRepository,
  }) : _recentUrbanWordRepository = recentUrbanWordRepository;

  final RecentUrbanWordRepository _recentUrbanWordRepository;

  @override
  ResultFuture<List<RecentSearch>> call() async =>
      _recentUrbanWordRepository.loadRecentSearch();
}
