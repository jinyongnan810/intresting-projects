import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/shrink_config.dart';
import 'package:image_shrinker/models/video_compress_quality.dart';

final configProvider = StateProvider.autoDispose<ShrinkConfig>((ref) =>
    const ShrinkConfig(
        outputPath: '/',
        usePercentage: true,
        percentage: 50,
        pixel: 256,
        videoCompressQuality: VideoCompressQuality.generalMedium));
