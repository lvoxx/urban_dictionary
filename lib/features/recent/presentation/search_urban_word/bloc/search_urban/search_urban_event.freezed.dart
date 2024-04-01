// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_urban_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUrbanEvent {
  String get word => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) getUrbanWordByWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? getUrbanWordByWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? getUrbanWordByWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrbanWordByWord value) getUrbanWordByWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrbanWordByWord value)? getUrbanWordByWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrbanWordByWord value)? getUrbanWordByWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUrbanEventCopyWith<SearchUrbanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUrbanEventCopyWith<$Res> {
  factory $SearchUrbanEventCopyWith(
          SearchUrbanEvent value, $Res Function(SearchUrbanEvent) then) =
      _$SearchUrbanEventCopyWithImpl<$Res, SearchUrbanEvent>;
  @useResult
  $Res call({String word});
}

/// @nodoc
class _$SearchUrbanEventCopyWithImpl<$Res, $Val extends SearchUrbanEvent>
    implements $SearchUrbanEventCopyWith<$Res> {
  _$SearchUrbanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUrbanWordByWordImplCopyWith<$Res>
    implements $SearchUrbanEventCopyWith<$Res> {
  factory _$$GetUrbanWordByWordImplCopyWith(_$GetUrbanWordByWordImpl value,
          $Res Function(_$GetUrbanWordByWordImpl) then) =
      __$$GetUrbanWordByWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word});
}

/// @nodoc
class __$$GetUrbanWordByWordImplCopyWithImpl<$Res>
    extends _$SearchUrbanEventCopyWithImpl<$Res, _$GetUrbanWordByWordImpl>
    implements _$$GetUrbanWordByWordImplCopyWith<$Res> {
  __$$GetUrbanWordByWordImplCopyWithImpl(_$GetUrbanWordByWordImpl _value,
      $Res Function(_$GetUrbanWordByWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$GetUrbanWordByWordImpl(
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUrbanWordByWordImpl implements GetUrbanWordByWord {
  const _$GetUrbanWordByWordImpl(this.word);

  @override
  final String word;

  @override
  String toString() {
    return 'SearchUrbanEvent.getUrbanWordByWord(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUrbanWordByWordImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUrbanWordByWordImplCopyWith<_$GetUrbanWordByWordImpl> get copyWith =>
      __$$GetUrbanWordByWordImplCopyWithImpl<_$GetUrbanWordByWordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String word) getUrbanWordByWord,
  }) {
    return getUrbanWordByWord(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String word)? getUrbanWordByWord,
  }) {
    return getUrbanWordByWord?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String word)? getUrbanWordByWord,
    required TResult orElse(),
  }) {
    if (getUrbanWordByWord != null) {
      return getUrbanWordByWord(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUrbanWordByWord value) getUrbanWordByWord,
  }) {
    return getUrbanWordByWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUrbanWordByWord value)? getUrbanWordByWord,
  }) {
    return getUrbanWordByWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUrbanWordByWord value)? getUrbanWordByWord,
    required TResult orElse(),
  }) {
    if (getUrbanWordByWord != null) {
      return getUrbanWordByWord(this);
    }
    return orElse();
  }
}

abstract class GetUrbanWordByWord implements SearchUrbanEvent {
  const factory GetUrbanWordByWord(final String word) =
      _$GetUrbanWordByWordImpl;

  @override
  String get word;
  @override
  @JsonKey(ignore: true)
  _$$GetUrbanWordByWordImplCopyWith<_$GetUrbanWordByWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
