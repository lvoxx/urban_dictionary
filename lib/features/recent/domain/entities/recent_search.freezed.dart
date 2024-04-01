// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecentSearch _$RecentSearchFromJson(Map<String, dynamic> json) {
  return _RecentSearch.fromJson(json);
}

/// @nodoc
mixin _$RecentSearch {
  @HiveField(0)
  String get recentSearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentSearchCopyWith<RecentSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchCopyWith<$Res> {
  factory $RecentSearchCopyWith(
          RecentSearch value, $Res Function(RecentSearch) then) =
      _$RecentSearchCopyWithImpl<$Res, RecentSearch>;
  @useResult
  $Res call({@HiveField(0) String recentSearch});
}

/// @nodoc
class _$RecentSearchCopyWithImpl<$Res, $Val extends RecentSearch>
    implements $RecentSearchCopyWith<$Res> {
  _$RecentSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSearch = null,
  }) {
    return _then(_value.copyWith(
      recentSearch: null == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentSearchImplCopyWith<$Res>
    implements $RecentSearchCopyWith<$Res> {
  factory _$$RecentSearchImplCopyWith(
          _$RecentSearchImpl value, $Res Function(_$RecentSearchImpl) then) =
      __$$RecentSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String recentSearch});
}

/// @nodoc
class __$$RecentSearchImplCopyWithImpl<$Res>
    extends _$RecentSearchCopyWithImpl<$Res, _$RecentSearchImpl>
    implements _$$RecentSearchImplCopyWith<$Res> {
  __$$RecentSearchImplCopyWithImpl(
      _$RecentSearchImpl _value, $Res Function(_$RecentSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSearch = null,
  }) {
    return _then(_$RecentSearchImpl(
      recentSearch: null == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentSearchImpl extends _RecentSearch {
  _$RecentSearchImpl({@HiveField(0) required this.recentSearch}) : super._();

  factory _$RecentSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentSearchImplFromJson(json);

  @override
  @HiveField(0)
  final String recentSearch;

  @override
  String toString() {
    return 'RecentSearch(recentSearch: $recentSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchImpl &&
            (identical(other.recentSearch, recentSearch) ||
                other.recentSearch == recentSearch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recentSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchImplCopyWith<_$RecentSearchImpl> get copyWith =>
      __$$RecentSearchImplCopyWithImpl<_$RecentSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentSearchImplToJson(
      this,
    );
  }
}

abstract class _RecentSearch extends RecentSearch {
  factory _RecentSearch({@HiveField(0) required final String recentSearch}) =
      _$RecentSearchImpl;
  _RecentSearch._() : super._();

  factory _RecentSearch.fromJson(Map<String, dynamic> json) =
      _$RecentSearchImpl.fromJson;

  @override
  @HiveField(0)
  String get recentSearch;
  @override
  @JsonKey(ignore: true)
  _$$RecentSearchImplCopyWith<_$RecentSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
