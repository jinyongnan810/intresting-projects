import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShrinkConfig {
  final String outputPath;
  final bool usePercentage;
  final bool usePixel;
  final int percentage;
  final int pixel;

  ShrinkConfig({
    required this.outputPath,
    required this.usePercentage,
    required this.usePixel,
    required this.percentage,
    required this.pixel,
  });
}

final configProvider =
    StateProvider.autoDispose<ShrinkConfig>((ref) => ShrinkConfig(
          outputPath: '/Users/kinyuunan/Desktop/image_shrinker_output',
          usePercentage: true,
          usePixel: false,
          percentage: 50,
          pixel: 256,
        ));
