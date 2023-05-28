// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_shrinker/models/video_compress_quality.dart';
part 'shrink_config.freezed.dart';

@freezed
class ShrinkConfig with _$ShrinkConfig {
  const factory ShrinkConfig({
    required String outputPath,
    required bool usePercentage,
    required int percentage,
    required int pixel,
    required VideoCompressQuality videoCompressQuality,
  }) = _ShrinkConfig;
}
