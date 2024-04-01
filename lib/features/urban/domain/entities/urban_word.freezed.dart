// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urban_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UrbanWord _$UrbanWordFromJson(Map<String, dynamic> json) {
  return _UrbanWord.fromJson(json);
}

/// @nodoc
mixin _$UrbanWord {
  @HiveField(0)
  String get definition => throw _privateConstructorUsedError;
  @HiveField(1)
  String get permalink => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'thumbs_up')
  int get thumbsUp => throw _privateConstructorUsedError;
  @HiveField(3)
  String get author => throw _privateConstructorUsedError;
  @HiveField(4)
  String get word => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'defid', disallowNullValue: true)
  int get defId => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'current_vote')
  String get currentVote => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'written_on')
  DateTime get writtenOn => throw _privateConstructorUsedError;
  @HiveField(8)
  String get example => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'thumbs_down')
  int get thumbsDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrbanWordCopyWith<UrbanWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrbanWordCopyWith<$Res> {
  factory $UrbanWordCopyWith(UrbanWord value, $Res Function(UrbanWord) then) =
      _$UrbanWordCopyWithImpl<$Res, UrbanWord>;
  @useResult
  $Res call(
      {@HiveField(0) String definition,
      @HiveField(1) String permalink,
      @HiveField(2) @JsonKey(name: 'thumbs_up') int thumbsUp,
      @HiveField(3) String author,
      @HiveField(4) String word,
      @HiveField(5) @JsonKey(name: 'defid', disallowNullValue: true) int defId,
      @HiveField(6) @JsonKey(name: 'current_vote') String currentVote,
      @HiveField(7) @JsonKey(name: 'written_on') DateTime writtenOn,
      @HiveField(8) String example,
      @HiveField(9) @JsonKey(name: 'thumbs_down') int thumbsDown});
}

/// @nodoc
class _$UrbanWordCopyWithImpl<$Res, $Val extends UrbanWord>
    implements $UrbanWordCopyWith<$Res> {
  _$UrbanWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? permalink = null,
    Object? thumbsUp = null,
    Object? author = null,
    Object? word = null,
    Object? defId = null,
    Object? currentVote = null,
    Object? writtenOn = null,
    Object? example = null,
    Object? thumbsDown = null,
  }) {
    return _then(_value.copyWith(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbsUp: null == thumbsUp
          ? _value.thumbsUp
          : thumbsUp // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      defId: null == defId
          ? _value.defId
          : defId // ignore: cast_nullable_to_non_nullable
              as int,
      currentVote: null == currentVote
          ? _value.currentVote
          : currentVote // ignore: cast_nullable_to_non_nullable
              as String,
      writtenOn: null == writtenOn
          ? _value.writtenOn
          : writtenOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      thumbsDown: null == thumbsDown
          ? _value.thumbsDown
          : thumbsDown // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrbanWordImplCopyWith<$Res>
    implements $UrbanWordCopyWith<$Res> {
  factory _$$UrbanWordImplCopyWith(
          _$UrbanWordImpl value, $Res Function(_$UrbanWordImpl) then) =
      __$$UrbanWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String definition,
      @HiveField(1) String permalink,
      @HiveField(2) @JsonKey(name: 'thumbs_up') int thumbsUp,
      @HiveField(3) String author,
      @HiveField(4) String word,
      @HiveField(5) @JsonKey(name: 'defid', disallowNullValue: true) int defId,
      @HiveField(6) @JsonKey(name: 'current_vote') String currentVote,
      @HiveField(7) @JsonKey(name: 'written_on') DateTime writtenOn,
      @HiveField(8) String example,
      @HiveField(9) @JsonKey(name: 'thumbs_down') int thumbsDown});
}

/// @nodoc
class __$$UrbanWordImplCopyWithImpl<$Res>
    extends _$UrbanWordCopyWithImpl<$Res, _$UrbanWordImpl>
    implements _$$UrbanWordImplCopyWith<$Res> {
  __$$UrbanWordImplCopyWithImpl(
      _$UrbanWordImpl _value, $Res Function(_$UrbanWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? permalink = null,
    Object? thumbsUp = null,
    Object? author = null,
    Object? word = null,
    Object? defId = null,
    Object? currentVote = null,
    Object? writtenOn = null,
    Object? example = null,
    Object? thumbsDown = null,
  }) {
    return _then(_$UrbanWordImpl(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      thumbsUp: null == thumbsUp
          ? _value.thumbsUp
          : thumbsUp // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      defId: null == defId
          ? _value.defId
          : defId // ignore: cast_nullable_to_non_nullable
              as int,
      currentVote: null == currentVote
          ? _value.currentVote
          : currentVote // ignore: cast_nullable_to_non_nullable
              as String,
      writtenOn: null == writtenOn
          ? _value.writtenOn
          : writtenOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      example: null == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String,
      thumbsDown: null == thumbsDown
          ? _value.thumbsDown
          : thumbsDown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UrbanWordImpl extends _UrbanWord {
  _$UrbanWordImpl(
      {@HiveField(0) required this.definition,
      @HiveField(1) required this.permalink,
      @HiveField(2) @JsonKey(name: 'thumbs_up') required this.thumbsUp,
      @HiveField(3) required this.author,
      @HiveField(4) required this.word,
      @HiveField(5)
      @JsonKey(name: 'defid', disallowNullValue: true)
      required this.defId,
      @HiveField(6) @JsonKey(name: 'current_vote') this.currentVote = '',
      @HiveField(7) @JsonKey(name: 'written_on') required this.writtenOn,
      @HiveField(8) required this.example,
      @HiveField(9) @JsonKey(name: 'thumbs_down') required this.thumbsDown})
      : super._();

  factory _$UrbanWordImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrbanWordImplFromJson(json);

  @override
  @HiveField(0)
  final String definition;
  @override
  @HiveField(1)
  final String permalink;
  @override
  @HiveField(2)
  @JsonKey(name: 'thumbs_up')
  final int thumbsUp;
  @override
  @HiveField(3)
  final String author;
  @override
  @HiveField(4)
  final String word;
  @override
  @HiveField(5)
  @JsonKey(name: 'defid', disallowNullValue: true)
  final int defId;
  @override
  @HiveField(6)
  @JsonKey(name: 'current_vote')
  final String currentVote;
  @override
  @HiveField(7)
  @JsonKey(name: 'written_on')
  final DateTime writtenOn;
  @override
  @HiveField(8)
  final String example;
  @override
  @HiveField(9)
  @JsonKey(name: 'thumbs_down')
  final int thumbsDown;

  @override
  String toString() {
    return 'UrbanWord(definition: $definition, permalink: $permalink, thumbsUp: $thumbsUp, author: $author, word: $word, defId: $defId, currentVote: $currentVote, writtenOn: $writtenOn, example: $example, thumbsDown: $thumbsDown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrbanWordImpl &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.thumbsUp, thumbsUp) ||
                other.thumbsUp == thumbsUp) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.defId, defId) || other.defId == defId) &&
            (identical(other.currentVote, currentVote) ||
                other.currentVote == currentVote) &&
            (identical(other.writtenOn, writtenOn) ||
                other.writtenOn == writtenOn) &&
            (identical(other.example, example) || other.example == example) &&
            (identical(other.thumbsDown, thumbsDown) ||
                other.thumbsDown == thumbsDown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, definition, permalink, thumbsUp,
      author, word, defId, currentVote, writtenOn, example, thumbsDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrbanWordImplCopyWith<_$UrbanWordImpl> get copyWith =>
      __$$UrbanWordImplCopyWithImpl<_$UrbanWordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrbanWordImplToJson(
      this,
    );
  }
}

abstract class _UrbanWord extends UrbanWord {
  factory _UrbanWord(
      {@HiveField(0) required final String definition,
      @HiveField(1) required final String permalink,
      @HiveField(2) @JsonKey(name: 'thumbs_up') required final int thumbsUp,
      @HiveField(3) required final String author,
      @HiveField(4) required final String word,
      @HiveField(5)
      @JsonKey(name: 'defid', disallowNullValue: true)
      required final int defId,
      @HiveField(6) @JsonKey(name: 'current_vote') final String currentVote,
      @HiveField(7)
      @JsonKey(name: 'written_on')
      required final DateTime writtenOn,
      @HiveField(8) required final String example,
      @HiveField(9)
      @JsonKey(name: 'thumbs_down')
      required final int thumbsDown}) = _$UrbanWordImpl;
  _UrbanWord._() : super._();

  factory _UrbanWord.fromJson(Map<String, dynamic> json) =
      _$UrbanWordImpl.fromJson;

  @override
  @HiveField(0)
  String get definition;
  @override
  @HiveField(1)
  String get permalink;
  @override
  @HiveField(2)
  @JsonKey(name: 'thumbs_up')
  int get thumbsUp;
  @override
  @HiveField(3)
  String get author;
  @override
  @HiveField(4)
  String get word;
  @override
  @HiveField(5)
  @JsonKey(name: 'defid', disallowNullValue: true)
  int get defId;
  @override
  @HiveField(6)
  @JsonKey(name: 'current_vote')
  String get currentVote;
  @override
  @HiveField(7)
  @JsonKey(name: 'written_on')
  DateTime get writtenOn;
  @override
  @HiveField(8)
  String get example;
  @override
  @HiveField(9)
  @JsonKey(name: 'thumbs_down')
  int get thumbsDown;
  @override
  @JsonKey(ignore: true)
  _$$UrbanWordImplCopyWith<_$UrbanWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
