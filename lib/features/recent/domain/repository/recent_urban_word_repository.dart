import 'package:com_lvoxx_urban_dictionary/core/utils/typedef.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';

abstract class RecentUrbanWordRepository {
  const RecentUrbanWordRepository();

  ResultFuture<List<RecentSearch>> loadRecentSearch();
  ResultVoid saveNewRecentSearch(RecentSearch newRecentSearch);
}
