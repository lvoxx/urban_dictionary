// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecentSearch recentSearch)
        saveNewRecentSearchEvent,
    required TResult Function() getAllRecentSearchEvent,
    required TResult Function() getRandomRecentSearchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult? Function()? getAllRecentSearchEvent,
    TResult? Function()? getRandomRecentSearchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult Function()? getAllRecentSearchEvent,
    TResult Function()? getRandomRecentSearchEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewRecentSearchEvent value)
        saveNewRecentSearchEvent,
    required TResult Function(GetAllRecentSearchEvent value)
        getAllRecentSearchEvent,
    required TResult Function(GetRandomRecentSearchEvent value)
        getRandomRecentSearchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult? Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult? Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchEventCopyWith<$Res> {
  factory $RecentSearchEventCopyWith(
          RecentSearchEvent value, $Res Function(RecentSearchEvent) then) =
      _$RecentSearchEventCopyWithImpl<$Res, RecentSearchEvent>;
}

/// @nodoc
class _$RecentSearchEventCopyWithImpl<$Res, $Val extends RecentSearchEvent>
    implements $RecentSearchEventCopyWith<$Res> {
  _$RecentSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveNewRecentSearchEventImplCopyWith<$Res> {
  factory _$$SaveNewRecentSearchEventImplCopyWith(
          _$SaveNewRecentSearchEventImpl value,
          $Res Function(_$SaveNewRecentSearchEventImpl) then) =
      __$$SaveNewRecentSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecentSearch recentSearch});

  $RecentSearchCopyWith<$Res> get recentSearch;
}

/// @nodoc
class __$$SaveNewRecentSearchEventImplCopyWithImpl<$Res>
    extends _$RecentSearchEventCopyWithImpl<$Res,
        _$SaveNewRecentSearchEventImpl>
    implements _$$SaveNewRecentSearchEventImplCopyWith<$Res> {
  __$$SaveNewRecentSearchEventImplCopyWithImpl(
      _$SaveNewRecentSearchEventImpl _value,
      $Res Function(_$SaveNewRecentSearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentSearch = null,
  }) {
    return _then(_$SaveNewRecentSearchEventImpl(
      null == recentSearch
          ? _value.recentSearch
          : recentSearch // ignore: cast_nullable_to_non_nullable
              as RecentSearch,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecentSearchCopyWith<$Res> get recentSearch {
    return $RecentSearchCopyWith<$Res>(_value.recentSearch, (value) {
      return _then(_value.copyWith(recentSearch: value));
    });
  }
}

/// @nodoc

class _$SaveNewRecentSearchEventImpl implements SaveNewRecentSearchEvent {
  const _$SaveNewRecentSearchEventImpl(this.recentSearch);

  @override
  final RecentSearch recentSearch;

  @override
  String toString() {
    return 'RecentSearchEvent.saveNewRecentSearchEvent(recentSearch: $recentSearch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNewRecentSearchEventImpl &&
            (identical(other.recentSearch, recentSearch) ||
                other.recentSearch == recentSearch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recentSearch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNewRecentSearchEventImplCopyWith<_$SaveNewRecentSearchEventImpl>
      get copyWith => __$$SaveNewRecentSearchEventImplCopyWithImpl<
          _$SaveNewRecentSearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecentSearch recentSearch)
        saveNewRecentSearchEvent,
    required TResult Function() getAllRecentSearchEvent,
    required TResult Function() getRandomRecentSearchEvent,
  }) {
    return saveNewRecentSearchEvent(recentSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult? Function()? getAllRecentSearchEvent,
    TResult? Function()? getRandomRecentSearchEvent,
  }) {
    return saveNewRecentSearchEvent?.call(recentSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult Function()? getAllRecentSearchEvent,
    TResult Function()? getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (saveNewRecentSearchEvent != null) {
      return saveNewRecentSearchEvent(recentSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewRecentSearchEvent value)
        saveNewRecentSearchEvent,
    required TResult Function(GetAllRecentSearchEvent value)
        getAllRecentSearchEvent,
    required TResult Function(GetRandomRecentSearchEvent value)
        getRandomRecentSearchEvent,
  }) {
    return saveNewRecentSearchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult? Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult? Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
  }) {
    return saveNewRecentSearchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (saveNewRecentSearchEvent != null) {
      return saveNewRecentSearchEvent(this);
    }
    return orElse();
  }
}

abstract class SaveNewRecentSearchEvent implements RecentSearchEvent {
  const factory SaveNewRecentSearchEvent(final RecentSearch recentSearch) =
      _$SaveNewRecentSearchEventImpl;

  RecentSearch get recentSearch;
  @JsonKey(ignore: true)
  _$$SaveNewRecentSearchEventImplCopyWith<_$SaveNewRecentSearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllRecentSearchEventImplCopyWith<$Res> {
  factory _$$GetAllRecentSearchEventImplCopyWith(
          _$GetAllRecentSearchEventImpl value,
          $Res Function(_$GetAllRecentSearchEventImpl) then) =
      __$$GetAllRecentSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllRecentSearchEventImplCopyWithImpl<$Res>
    extends _$RecentSearchEventCopyWithImpl<$Res, _$GetAllRecentSearchEventImpl>
    implements _$$GetAllRecentSearchEventImplCopyWith<$Res> {
  __$$GetAllRecentSearchEventImplCopyWithImpl(
      _$GetAllRecentSearchEventImpl _value,
      $Res Function(_$GetAllRecentSearchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllRecentSearchEventImpl implements GetAllRecentSearchEvent {
  const _$GetAllRecentSearchEventImpl();

  @override
  String toString() {
    return 'RecentSearchEvent.getAllRecentSearchEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllRecentSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecentSearch recentSearch)
        saveNewRecentSearchEvent,
    required TResult Function() getAllRecentSearchEvent,
    required TResult Function() getRandomRecentSearchEvent,
  }) {
    return getAllRecentSearchEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult? Function()? getAllRecentSearchEvent,
    TResult? Function()? getRandomRecentSearchEvent,
  }) {
    return getAllRecentSearchEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult Function()? getAllRecentSearchEvent,
    TResult Function()? getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (getAllRecentSearchEvent != null) {
      return getAllRecentSearchEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewRecentSearchEvent value)
        saveNewRecentSearchEvent,
    required TResult Function(GetAllRecentSearchEvent value)
        getAllRecentSearchEvent,
    required TResult Function(GetRandomRecentSearchEvent value)
        getRandomRecentSearchEvent,
  }) {
    return getAllRecentSearchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult? Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult? Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
  }) {
    return getAllRecentSearchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (getAllRecentSearchEvent != null) {
      return getAllRecentSearchEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllRecentSearchEvent implements RecentSearchEvent {
  const factory GetAllRecentSearchEvent() = _$GetAllRecentSearchEventImpl;
}

/// @nodoc
abstract class _$$GetRandomRecentSearchEventImplCopyWith<$Res> {
  factory _$$GetRandomRecentSearchEventImplCopyWith(
          _$GetRandomRecentSearchEventImpl value,
          $Res Function(_$GetRandomRecentSearchEventImpl) then) =
      __$$GetRandomRecentSearchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRandomRecentSearchEventImplCopyWithImpl<$Res>
    extends _$RecentSearchEventCopyWithImpl<$Res,
        _$GetRandomRecentSearchEventImpl>
    implements _$$GetRandomRecentSearchEventImplCopyWith<$Res> {
  __$$GetRandomRecentSearchEventImplCopyWithImpl(
      _$GetRandomRecentSearchEventImpl _value,
      $Res Function(_$GetRandomRecentSearchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRandomRecentSearchEventImpl implements GetRandomRecentSearchEvent {
  const _$GetRandomRecentSearchEventImpl();

  @override
  String toString() {
    return 'RecentSearchEvent.getRandomRecentSearchEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRandomRecentSearchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecentSearch recentSearch)
        saveNewRecentSearchEvent,
    required TResult Function() getAllRecentSearchEvent,
    required TResult Function() getRandomRecentSearchEvent,
  }) {
    return getRandomRecentSearchEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult? Function()? getAllRecentSearchEvent,
    TResult? Function()? getRandomRecentSearchEvent,
  }) {
    return getRandomRecentSearchEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecentSearch recentSearch)? saveNewRecentSearchEvent,
    TResult Function()? getAllRecentSearchEvent,
    TResult Function()? getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (getRandomRecentSearchEvent != null) {
      return getRandomRecentSearchEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNewRecentSearchEvent value)
        saveNewRecentSearchEvent,
    required TResult Function(GetAllRecentSearchEvent value)
        getAllRecentSearchEvent,
    required TResult Function(GetRandomRecentSearchEvent value)
        getRandomRecentSearchEvent,
  }) {
    return getRandomRecentSearchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult? Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult? Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
  }) {
    return getRandomRecentSearchEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNewRecentSearchEvent value)? saveNewRecentSearchEvent,
    TResult Function(GetAllRecentSearchEvent value)? getAllRecentSearchEvent,
    TResult Function(GetRandomRecentSearchEvent value)?
        getRandomRecentSearchEvent,
    required TResult orElse(),
  }) {
    if (getRandomRecentSearchEvent != null) {
      return getRandomRecentSearchEvent(this);
    }
    return orElse();
  }
}

abstract class GetRandomRecentSearchEvent implements RecentSearchEvent {
  const factory GetRandomRecentSearchEvent() = _$GetRandomRecentSearchEventImpl;
}
