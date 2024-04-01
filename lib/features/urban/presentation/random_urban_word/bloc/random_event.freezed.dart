// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RandomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UrbanWord> urbanWords)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function() loadNewRandomWordsFromApiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function()? loadNewRandomWordsFromApiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function()? loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomWordsFromInitToScreenEvent value)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function(LoadNewRandomWordsFromApiEvent value)
        loadNewRandomWordsFromApiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomEventCopyWith<$Res> {
  factory $RandomEventCopyWith(
          RandomEvent value, $Res Function(RandomEvent) then) =
      _$RandomEventCopyWithImpl<$Res, RandomEvent>;
}

/// @nodoc
class _$RandomEventCopyWithImpl<$Res, $Val extends RandomEvent>
    implements $RandomEventCopyWith<$Res> {
  _$RandomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRandomWordsFromInitToScreenEventImplCopyWith<$Res> {
  factory _$$LoadRandomWordsFromInitToScreenEventImplCopyWith(
          _$LoadRandomWordsFromInitToScreenEventImpl value,
          $Res Function(_$LoadRandomWordsFromInitToScreenEventImpl) then) =
      __$$LoadRandomWordsFromInitToScreenEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UrbanWord> urbanWords});
}

/// @nodoc
class __$$LoadRandomWordsFromInitToScreenEventImplCopyWithImpl<$Res>
    extends _$RandomEventCopyWithImpl<$Res,
        _$LoadRandomWordsFromInitToScreenEventImpl>
    implements _$$LoadRandomWordsFromInitToScreenEventImplCopyWith<$Res> {
  __$$LoadRandomWordsFromInitToScreenEventImplCopyWithImpl(
      _$LoadRandomWordsFromInitToScreenEventImpl _value,
      $Res Function(_$LoadRandomWordsFromInitToScreenEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urbanWords = null,
  }) {
    return _then(_$LoadRandomWordsFromInitToScreenEventImpl(
      null == urbanWords
          ? _value._urbanWords
          : urbanWords // ignore: cast_nullable_to_non_nullable
              as List<UrbanWord>,
    ));
  }
}

/// @nodoc

class _$LoadRandomWordsFromInitToScreenEventImpl
    implements LoadRandomWordsFromInitToScreenEvent {
  const _$LoadRandomWordsFromInitToScreenEventImpl(
      final List<UrbanWord> urbanWords)
      : _urbanWords = urbanWords;

  final List<UrbanWord> _urbanWords;
  @override
  List<UrbanWord> get urbanWords {
    if (_urbanWords is EqualUnmodifiableListView) return _urbanWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urbanWords);
  }

  @override
  String toString() {
    return 'RandomEvent.loadRandomWordsFromInitToScreenEvent(urbanWords: $urbanWords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadRandomWordsFromInitToScreenEventImpl &&
            const DeepCollectionEquality()
                .equals(other._urbanWords, _urbanWords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_urbanWords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadRandomWordsFromInitToScreenEventImplCopyWith<
          _$LoadRandomWordsFromInitToScreenEventImpl>
      get copyWith => __$$LoadRandomWordsFromInitToScreenEventImplCopyWithImpl<
          _$LoadRandomWordsFromInitToScreenEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UrbanWord> urbanWords)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function() loadNewRandomWordsFromApiEvent,
  }) {
    return loadRandomWordsFromInitToScreenEvent(urbanWords);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function()? loadNewRandomWordsFromApiEvent,
  }) {
    return loadRandomWordsFromInitToScreenEvent?.call(urbanWords);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function()? loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) {
    if (loadRandomWordsFromInitToScreenEvent != null) {
      return loadRandomWordsFromInitToScreenEvent(urbanWords);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomWordsFromInitToScreenEvent value)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function(LoadNewRandomWordsFromApiEvent value)
        loadNewRandomWordsFromApiEvent,
  }) {
    return loadRandomWordsFromInitToScreenEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
  }) {
    return loadRandomWordsFromInitToScreenEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) {
    if (loadRandomWordsFromInitToScreenEvent != null) {
      return loadRandomWordsFromInitToScreenEvent(this);
    }
    return orElse();
  }
}

abstract class LoadRandomWordsFromInitToScreenEvent implements RandomEvent {
  const factory LoadRandomWordsFromInitToScreenEvent(
          final List<UrbanWord> urbanWords) =
      _$LoadRandomWordsFromInitToScreenEventImpl;

  List<UrbanWord> get urbanWords;
  @JsonKey(ignore: true)
  _$$LoadRandomWordsFromInitToScreenEventImplCopyWith<
          _$LoadRandomWordsFromInitToScreenEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNewRandomWordsFromApiEventImplCopyWith<$Res> {
  factory _$$LoadNewRandomWordsFromApiEventImplCopyWith(
          _$LoadNewRandomWordsFromApiEventImpl value,
          $Res Function(_$LoadNewRandomWordsFromApiEventImpl) then) =
      __$$LoadNewRandomWordsFromApiEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNewRandomWordsFromApiEventImplCopyWithImpl<$Res>
    extends _$RandomEventCopyWithImpl<$Res,
        _$LoadNewRandomWordsFromApiEventImpl>
    implements _$$LoadNewRandomWordsFromApiEventImplCopyWith<$Res> {
  __$$LoadNewRandomWordsFromApiEventImplCopyWithImpl(
      _$LoadNewRandomWordsFromApiEventImpl _value,
      $Res Function(_$LoadNewRandomWordsFromApiEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadNewRandomWordsFromApiEventImpl
    implements LoadNewRandomWordsFromApiEvent {
  const _$LoadNewRandomWordsFromApiEventImpl();

  @override
  String toString() {
    return 'RandomEvent.loadNewRandomWordsFromApiEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNewRandomWordsFromApiEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UrbanWord> urbanWords)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function() loadNewRandomWordsFromApiEvent,
  }) {
    return loadNewRandomWordsFromApiEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function()? loadNewRandomWordsFromApiEvent,
  }) {
    return loadNewRandomWordsFromApiEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UrbanWord> urbanWords)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function()? loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) {
    if (loadNewRandomWordsFromApiEvent != null) {
      return loadNewRandomWordsFromApiEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRandomWordsFromInitToScreenEvent value)
        loadRandomWordsFromInitToScreenEvent,
    required TResult Function(LoadNewRandomWordsFromApiEvent value)
        loadNewRandomWordsFromApiEvent,
  }) {
    return loadNewRandomWordsFromApiEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult? Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
  }) {
    return loadNewRandomWordsFromApiEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRandomWordsFromInitToScreenEvent value)?
        loadRandomWordsFromInitToScreenEvent,
    TResult Function(LoadNewRandomWordsFromApiEvent value)?
        loadNewRandomWordsFromApiEvent,
    required TResult orElse(),
  }) {
    if (loadNewRandomWordsFromApiEvent != null) {
      return loadNewRandomWordsFromApiEvent(this);
    }
    return orElse();
  }
}

abstract class LoadNewRandomWordsFromApiEvent implements RandomEvent {
  const factory LoadNewRandomWordsFromApiEvent() =
      _$LoadNewRandomWordsFromApiEventImpl;
}
