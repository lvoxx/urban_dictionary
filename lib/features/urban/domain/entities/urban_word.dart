import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'urban_word.freezed.dart';
part 'urban_word.g.dart';

@freezed
@HiveType(typeId: 0)
class UrbanWord extends HiveObject with _$UrbanWord {
  @JsonSerializable(explicitToJson: true)
  factory UrbanWord({
    @HiveField(0) required String definition,
    @HiveField(1) required String permalink,
    @HiveField(2) @JsonKey(name: 'thumbs_up') required int thumbsUp,
    @HiveField(3) required String author,
    @HiveField(4) required String word,
    @HiveField(5)
    @JsonKey(name: 'defid', disallowNullValue: true)
    required int defId,
    @HiveField(6)
    @JsonKey(name: 'current_vote')
    @Default('')
    String currentVote,
    @HiveField(7) @JsonKey(name: 'written_on') required DateTime writtenOn,
    @HiveField(8) required String example,
    @HiveField(9) @JsonKey(name: 'thumbs_down') required int thumbsDown,
  }) = _UrbanWord;
  UrbanWord._();

  factory UrbanWord.fromJson(Map<String, dynamic> json) =>
      _$UrbanWordFromJson(json);

  static List<UrbanWord> fromJsonList(List<dynamic> jsonList) => List.from(
        jsonList.map(
          (urbanWord) => UrbanWord.fromJson(urbanWord as Map<String, dynamic>),
        ),
      );
}
