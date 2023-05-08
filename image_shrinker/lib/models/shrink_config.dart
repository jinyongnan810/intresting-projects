// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shrink_config.freezed.dart';

@freezed
class ShrinkConfig with _$ShrinkConfig {
  const factory ShrinkConfig({
    required String outputPath,
    required bool usePercentage,
    required bool usePixel,
    required int percentage,
    required int pixel,
  }) = _ShrinkConfig;
}
