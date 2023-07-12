// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Articles> articles) firsPageData,
    required TResult Function(List<Articles> articles, int index)
        toggleThrowNews,
    required TResult Function(String message, int index) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Articles> articles)? firsPageData,
    TResult? Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult? Function(String message, int index)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Articles> articles)? firsPageData,
    TResult Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult Function(String message, int index)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(FirsPageData value) firsPageData,
    required TResult Function(ToggleThrowNews value) toggleThrowNews,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(FirsPageData value)? firsPageData,
    TResult? Function(ToggleThrowNews value)? toggleThrowNews,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(FirsPageData value)? firsPageData,
    TResult Function(ToggleThrowNews value)? toggleThrowNews,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStatesCopyWith<$Res> {
  factory $NewsStatesCopyWith(
          NewsStates value, $Res Function(NewsStates) then) =
      _$NewsStatesCopyWithImpl<$Res, NewsStates>;
}

/// @nodoc
class _$NewsStatesCopyWithImpl<$Res, $Val extends NewsStates>
    implements $NewsStatesCopyWith<$Res> {
  _$NewsStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<$Res> {
  factory _$$IdleCopyWith(_$Idle value, $Res Function(_$Idle) then) =
      __$$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<$Res> extends _$NewsStatesCopyWithImpl<$Res, _$Idle>
    implements _$$IdleCopyWith<$Res> {
  __$$IdleCopyWithImpl(_$Idle _value, $Res Function(_$Idle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Idle implements Idle {
  const _$Idle();

  @override
  String toString() {
    return 'NewsStates.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Articles> articles) firsPageData,
    required TResult Function(List<Articles> articles, int index)
        toggleThrowNews,
    required TResult Function(String message, int index) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Articles> articles)? firsPageData,
    TResult? Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult? Function(String message, int index)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Articles> articles)? firsPageData,
    TResult Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult Function(String message, int index)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(FirsPageData value) firsPageData,
    required TResult Function(ToggleThrowNews value) toggleThrowNews,
    required TResult Function(Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(FirsPageData value)? firsPageData,
    TResult? Function(ToggleThrowNews value)? toggleThrowNews,
    TResult? Function(Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(FirsPageData value)? firsPageData,
    TResult Function(ToggleThrowNews value)? toggleThrowNews,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle implements NewsStates {
  const factory Idle() = _$Idle;
}

/// @nodoc
abstract class _$$FirsPageDataCopyWith<$Res> {
  factory _$$FirsPageDataCopyWith(
          _$FirsPageData value, $Res Function(_$FirsPageData) then) =
      __$$FirsPageDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Articles> articles});
}

/// @nodoc
class __$$FirsPageDataCopyWithImpl<$Res>
    extends _$NewsStatesCopyWithImpl<$Res, _$FirsPageData>
    implements _$$FirsPageDataCopyWith<$Res> {
  __$$FirsPageDataCopyWithImpl(
      _$FirsPageData _value, $Res Function(_$FirsPageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$FirsPageData(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Articles>,
    ));
  }
}

/// @nodoc

class _$FirsPageData implements FirsPageData {
  const _$FirsPageData(final List<Articles> articles) : _articles = articles;

  final List<Articles> _articles;
  @override
  List<Articles> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsStates.firsPageData(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirsPageData &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirsPageDataCopyWith<_$FirsPageData> get copyWith =>
      __$$FirsPageDataCopyWithImpl<_$FirsPageData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Articles> articles) firsPageData,
    required TResult Function(List<Articles> articles, int index)
        toggleThrowNews,
    required TResult Function(String message, int index) error,
  }) {
    return firsPageData(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Articles> articles)? firsPageData,
    TResult? Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult? Function(String message, int index)? error,
  }) {
    return firsPageData?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Articles> articles)? firsPageData,
    TResult Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult Function(String message, int index)? error,
    required TResult orElse(),
  }) {
    if (firsPageData != null) {
      return firsPageData(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(FirsPageData value) firsPageData,
    required TResult Function(ToggleThrowNews value) toggleThrowNews,
    required TResult Function(Error value) error,
  }) {
    return firsPageData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(FirsPageData value)? firsPageData,
    TResult? Function(ToggleThrowNews value)? toggleThrowNews,
    TResult? Function(Error value)? error,
  }) {
    return firsPageData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(FirsPageData value)? firsPageData,
    TResult Function(ToggleThrowNews value)? toggleThrowNews,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (firsPageData != null) {
      return firsPageData(this);
    }
    return orElse();
  }
}

abstract class FirsPageData implements NewsStates {
  const factory FirsPageData(final List<Articles> articles) = _$FirsPageData;

  List<Articles> get articles;
  @JsonKey(ignore: true)
  _$$FirsPageDataCopyWith<_$FirsPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleThrowNewsCopyWith<$Res> {
  factory _$$ToggleThrowNewsCopyWith(
          _$ToggleThrowNews value, $Res Function(_$ToggleThrowNews) then) =
      __$$ToggleThrowNewsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Articles> articles, int index});
}

/// @nodoc
class __$$ToggleThrowNewsCopyWithImpl<$Res>
    extends _$NewsStatesCopyWithImpl<$Res, _$ToggleThrowNews>
    implements _$$ToggleThrowNewsCopyWith<$Res> {
  __$$ToggleThrowNewsCopyWithImpl(
      _$ToggleThrowNews _value, $Res Function(_$ToggleThrowNews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? index = null,
  }) {
    return _then(_$ToggleThrowNews(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Articles>,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleThrowNews implements ToggleThrowNews {
  const _$ToggleThrowNews(final List<Articles> articles, this.index)
      : _articles = articles;

  final List<Articles> _articles;
  @override
  List<Articles> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'NewsStates.toggleThrowNews(articles: $articles, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleThrowNews &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_articles), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleThrowNewsCopyWith<_$ToggleThrowNews> get copyWith =>
      __$$ToggleThrowNewsCopyWithImpl<_$ToggleThrowNews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Articles> articles) firsPageData,
    required TResult Function(List<Articles> articles, int index)
        toggleThrowNews,
    required TResult Function(String message, int index) error,
  }) {
    return toggleThrowNews(articles, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Articles> articles)? firsPageData,
    TResult? Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult? Function(String message, int index)? error,
  }) {
    return toggleThrowNews?.call(articles, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Articles> articles)? firsPageData,
    TResult Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult Function(String message, int index)? error,
    required TResult orElse(),
  }) {
    if (toggleThrowNews != null) {
      return toggleThrowNews(articles, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(FirsPageData value) firsPageData,
    required TResult Function(ToggleThrowNews value) toggleThrowNews,
    required TResult Function(Error value) error,
  }) {
    return toggleThrowNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(FirsPageData value)? firsPageData,
    TResult? Function(ToggleThrowNews value)? toggleThrowNews,
    TResult? Function(Error value)? error,
  }) {
    return toggleThrowNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(FirsPageData value)? firsPageData,
    TResult Function(ToggleThrowNews value)? toggleThrowNews,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (toggleThrowNews != null) {
      return toggleThrowNews(this);
    }
    return orElse();
  }
}

abstract class ToggleThrowNews implements NewsStates {
  const factory ToggleThrowNews(
      final List<Articles> articles, final int index) = _$ToggleThrowNews;

  List<Articles> get articles;
  int get index;
  @JsonKey(ignore: true)
  _$$ToggleThrowNewsCopyWith<_$ToggleThrowNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int index});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$NewsStatesCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? index = null,
  }) {
    return _then(_$Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message, this.index);

  @override
  final String message;
  @override
  final int index;

  @override
  String toString() {
    return 'NewsStates.error(message: $message, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<Articles> articles) firsPageData,
    required TResult Function(List<Articles> articles, int index)
        toggleThrowNews,
    required TResult Function(String message, int index) error,
  }) {
    return error(message, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<Articles> articles)? firsPageData,
    TResult? Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult? Function(String message, int index)? error,
  }) {
    return error?.call(message, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<Articles> articles)? firsPageData,
    TResult Function(List<Articles> articles, int index)? toggleThrowNews,
    TResult Function(String message, int index)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle value) idle,
    required TResult Function(FirsPageData value) firsPageData,
    required TResult Function(ToggleThrowNews value) toggleThrowNews,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle value)? idle,
    TResult? Function(FirsPageData value)? firsPageData,
    TResult? Function(ToggleThrowNews value)? toggleThrowNews,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle value)? idle,
    TResult Function(FirsPageData value)? firsPageData,
    TResult Function(ToggleThrowNews value)? toggleThrowNews,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements NewsStates {
  const factory Error(final String message, final int index) = _$Error;

  String get message;
  int get index;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
