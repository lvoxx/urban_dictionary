import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_urban_event.freezed.dart';

@freezed
class SearchUrbanEvent with _$SearchUrbanEvent {
  const factory SearchUrbanEvent.getUrbanWordByWord(String word) =
      GetUrbanWordByWord;
}
