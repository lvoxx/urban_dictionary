// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urban_word.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UrbanWordAdapter extends TypeAdapter<UrbanWord> {
  @override
  final int typeId = 0;

  @override
  UrbanWord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UrbanWord(
      definition: fields[0] as String,
      permalink: fields[1] as String,
      thumbsUp: fields[2] as int,
      author: fields[3] as String,
      word: fields[4] as String,
      defId: fields[5] as int,
      currentVote: fields[6] as String,
      writtenOn: fields[7] as DateTime,
      example: fields[8] as String,
      thumbsDown: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, UrbanWord obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.definition)
      ..writeByte(1)
      ..write(obj.permalink)
      ..writeByte(2)
      ..write(obj.thumbsUp)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.word)
      ..writeByte(5)
      ..write(obj.defId)
      ..writeByte(6)
      ..write(obj.currentVote)
      ..writeByte(7)
      ..write(obj.writtenOn)
      ..writeByte(8)
      ..write(obj.example)
      ..writeByte(9)
      ..write(obj.thumbsDown);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UrbanWordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UrbanWordImpl _$$UrbanWordImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['defid'],
  );
  return _$UrbanWordImpl(
    definition: json['definition'] as String,
    permalink: json['permalink'] as String,
    thumbsUp: json['thumbs_up'] as int,
    author: json['author'] as String,
    word: json['word'] as String,
    defId: json['defid'] as int,
    currentVote: json['current_vote'] as String? ?? '',
    writtenOn: DateTime.parse(json['written_on'] as String),
    example: json['example'] as String,
    thumbsDown: json['thumbs_down'] as int,
  );
}

Map<String, dynamic> _$$UrbanWordImplToJson(_$UrbanWordImpl instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'permalink': instance.permalink,
      'thumbs_up': instance.thumbsUp,
      'author': instance.author,
      'word': instance.word,
      'defid': instance.defId,
      'current_vote': instance.currentVote,
      'written_on': instance.writtenOn.toIso8601String(),
      'example': instance.example,
      'thumbs_down': instance.thumbsDown,
    };
