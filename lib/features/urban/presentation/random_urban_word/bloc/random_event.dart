import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';

part 'random_event.freezed.dart';

@freezed
class RandomEvent with _$RandomEvent {
  const factory RandomEvent.loadRandomWordsFromInitToScreenEvent(
      List<UrbanWord> urbanWords) = LoadRandomWordsFromInitToScreenEvent;
  const factory RandomEvent.loadNewRandomWordsFromApiEvent() =
      LoadNewRandomWordsFromApiEvent;
}
