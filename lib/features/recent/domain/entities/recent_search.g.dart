// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentSearchAdapter extends TypeAdapter<RecentSearch> {
  @override
  final int typeId = 1;

  @override
  RecentSearch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentSearch(
      recentSearch: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RecentSearch obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.recentSearch);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentSearchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentSearchImpl _$$RecentSearchImplFromJson(Map<String, dynamic> json) =>
    _$RecentSearchImpl(
      recentSearch: json['recentSearch'] as String,
    );

Map<String, dynamic> _$$RecentSearchImplToJson(_$RecentSearchImpl instance) =>
    <String, dynamic>{
      'recentSearch': instance.recentSearch,
    };
