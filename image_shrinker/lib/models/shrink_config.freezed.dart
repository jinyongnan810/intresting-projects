// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shrink_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShrinkConfig {
  String get outputPath => throw _privateConstructorUsedError;
  bool get usePercentage => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  int get pixel => throw _privateConstructorUsedError;
  VideoCompressQuality get videoCompressQuality =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShrinkConfigCopyWith<ShrinkConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShrinkConfigCopyWith<$Res> {
  factory $ShrinkConfigCopyWith(
          ShrinkConfig value, $Res Function(ShrinkConfig) then) =
      _$ShrinkConfigCopyWithImpl<$Res, ShrinkConfig>;
  @useResult
  $Res call(
      {String outputPath,
      bool usePercentage,
      int percentage,
      int pixel,
      VideoCompressQuality videoCompressQuality});
}

/// @nodoc
class _$ShrinkConfigCopyWithImpl<$Res, $Val extends ShrinkConfig>
    implements $ShrinkConfigCopyWith<$Res> {
  _$ShrinkConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputPath = null,
    Object? usePercentage = null,
    Object? percentage = null,
    Object? pixel = null,
    Object? videoCompressQuality = null,
  }) {
    return _then(_value.copyWith(
      outputPath: null == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
      usePercentage: null == usePercentage
          ? _value.usePercentage
          : usePercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      pixel: null == pixel
          ? _value.pixel
          : pixel // ignore: cast_nullable_to_non_nullable
              as int,
      videoCompressQuality: null == videoCompressQuality
          ? _value.videoCompressQuality
          : videoCompressQuality // ignore: cast_nullable_to_non_nullable
              as VideoCompressQuality,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShrinkConfigCopyWith<$Res>
    implements $ShrinkConfigCopyWith<$Res> {
  factory _$$_ShrinkConfigCopyWith(
          _$_ShrinkConfig value, $Res Function(_$_ShrinkConfig) then) =
      __$$_ShrinkConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String outputPath,
      bool usePercentage,
      int percentage,
      int pixel,
      VideoCompressQuality videoCompressQuality});
}

/// @nodoc
class __$$_ShrinkConfigCopyWithImpl<$Res>
    extends _$ShrinkConfigCopyWithImpl<$Res, _$_ShrinkConfig>
    implements _$$_ShrinkConfigCopyWith<$Res> {
  __$$_ShrinkConfigCopyWithImpl(
      _$_ShrinkConfig _value, $Res Function(_$_ShrinkConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputPath = null,
    Object? usePercentage = null,
    Object? percentage = null,
    Object? pixel = null,
    Object? videoCompressQuality = null,
  }) {
    return _then(_$_ShrinkConfig(
      outputPath: null == outputPath
          ? _value.outputPath
          : outputPath // ignore: cast_nullable_to_non_nullable
              as String,
      usePercentage: null == usePercentage
          ? _value.usePercentage
          : usePercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      pixel: null == pixel
          ? _value.pixel
          : pixel // ignore: cast_nullable_to_non_nullable
              as int,
      videoCompressQuality: null == videoCompressQuality
          ? _value.videoCompressQuality
          : videoCompressQuality // ignore: cast_nullable_to_non_nullable
              as VideoCompressQuality,
    ));
  }
}

/// @nodoc

class _$_ShrinkConfig implements _ShrinkConfig {
  const _$_ShrinkConfig(
      {required this.outputPath,
      required this.usePercentage,
      required this.percentage,
      required this.pixel,
      required this.videoCompressQuality});

  @override
  final String outputPath;
  @override
  final bool usePercentage;
  @override
  final int percentage;
  @override
  final int pixel;
  @override
  final VideoCompressQuality videoCompressQuality;

  @override
  String toString() {
    return 'ShrinkConfig(outputPath: $outputPath, usePercentage: $usePercentage, percentage: $percentage, pixel: $pixel, videoCompressQuality: $videoCompressQuality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShrinkConfig &&
            (identical(other.outputPath, outputPath) ||
                other.outputPath == outputPath) &&
            (identical(other.usePercentage, usePercentage) ||
                other.usePercentage == usePercentage) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.pixel, pixel) || other.pixel == pixel) &&
            (identical(other.videoCompressQuality, videoCompressQuality) ||
                other.videoCompressQuality == videoCompressQuality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outputPath, usePercentage,
      percentage, pixel, videoCompressQuality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShrinkConfigCopyWith<_$_ShrinkConfig> get copyWith =>
      __$$_ShrinkConfigCopyWithImpl<_$_ShrinkConfig>(this, _$identity);
}

abstract class _ShrinkConfig implements ShrinkConfig {
  const factory _ShrinkConfig(
          {required final String outputPath,
          required final bool usePercentage,
          required final int percentage,
          required final int pixel,
          required final VideoCompressQuality videoCompressQuality}) =
      _$_ShrinkConfig;

  @override
  String get outputPath;
  @override
  bool get usePercentage;
  @override
  int get percentage;
  @override
  int get pixel;
  @override
  VideoCompressQuality get videoCompressQuality;
  @override
  @JsonKey(ignore: true)
  _$$_ShrinkConfigCopyWith<_$_ShrinkConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
