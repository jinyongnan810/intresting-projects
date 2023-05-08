import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/shrink_config.dart';

final configProvider =
    StateProvider.autoDispose<ShrinkConfig>((ref) => const ShrinkConfig(
          outputPath: '/Users/kinyuunan/Desktop/image_shrinker_output',
          usePercentage: true,
          usePixel: false,
          percentage: 50,
          pixel: 256,
        ));
