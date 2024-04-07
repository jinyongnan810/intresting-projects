// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewPostEvent {
  Post get post => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePostEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePostEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePostEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPostEventCopyWith<NewPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostEventCopyWith<$Res> {
  factory $NewPostEventCopyWith(
          NewPostEvent value, $Res Function(NewPostEvent) then) =
      _$NewPostEventCopyWithImpl<$Res, NewPostEvent>;
  @useResult
  $Res call({Post post});
}

/// @nodoc
class _$NewPostEventCopyWithImpl<$Res, $Val extends NewPostEvent>
    implements $NewPostEventCopyWith<$Res> {
  _$NewPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePostEventImplCopyWith<$Res>
    implements $NewPostEventCopyWith<$Res> {
  factory _$$SavePostEventImplCopyWith(
          _$SavePostEventImpl value, $Res Function(_$SavePostEventImpl) then) =
      __$$SavePostEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post});
}

/// @nodoc
class __$$SavePostEventImplCopyWithImpl<$Res>
    extends _$NewPostEventCopyWithImpl<$Res, _$SavePostEventImpl>
    implements _$$SavePostEventImplCopyWith<$Res> {
  __$$SavePostEventImplCopyWithImpl(
      _$SavePostEventImpl _value, $Res Function(_$SavePostEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$SavePostEventImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$SavePostEventImpl implements SavePostEvent {
  const _$SavePostEventImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'NewPostEvent.save(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePostEventImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePostEventImplCopyWith<_$SavePostEventImpl> get copyWith =>
      __$$SavePostEventImplCopyWithImpl<_$SavePostEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) save,
  }) {
    return save(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Post post)? save,
  }) {
    return save?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePostEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePostEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePostEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SavePostEvent implements NewPostEvent {
  const factory SavePostEvent(final Post post) = _$SavePostEventImpl;

  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  _$$SavePostEventImplCopyWith<_$SavePostEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewPostState {
  Post? get post => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPostStateCopyWith<NewPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPostStateCopyWith<$Res> {
  factory $NewPostStateCopyWith(
          NewPostState value, $Res Function(NewPostState) then) =
      _$NewPostStateCopyWithImpl<$Res, NewPostState>;
  @useResult
  $Res call({Post? post});
}

/// @nodoc
class _$NewPostStateCopyWithImpl<$Res, $Val extends NewPostState>
    implements $NewPostStateCopyWith<$Res> {
  _$NewPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewPostStateImplCopyWith<$Res>
    implements $NewPostStateCopyWith<$Res> {
  factory _$$NewPostStateImplCopyWith(
          _$NewPostStateImpl value, $Res Function(_$NewPostStateImpl) then) =
      __$$NewPostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post? post});
}

/// @nodoc
class __$$NewPostStateImplCopyWithImpl<$Res>
    extends _$NewPostStateCopyWithImpl<$Res, _$NewPostStateImpl>
    implements _$$NewPostStateImplCopyWith<$Res> {
  __$$NewPostStateImplCopyWithImpl(
      _$NewPostStateImpl _value, $Res Function(_$NewPostStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$NewPostStateImpl(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$NewPostStateImpl extends _NewPostState {
  const _$NewPostStateImpl({this.post}) : super._();

  @override
  final Post? post;

  @override
  String toString() {
    return 'NewPostState(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPostStateImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPostStateImplCopyWith<_$NewPostStateImpl> get copyWith =>
      __$$NewPostStateImplCopyWithImpl<_$NewPostStateImpl>(this, _$identity);
}

abstract class _NewPostState extends NewPostState {
  const factory _NewPostState({final Post? post}) = _$NewPostStateImpl;
  const _NewPostState._() : super._();

  @override
  Post? get post;
  @override
  @JsonKey(ignore: true)
  _$$NewPostStateImplCopyWith<_$NewPostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
