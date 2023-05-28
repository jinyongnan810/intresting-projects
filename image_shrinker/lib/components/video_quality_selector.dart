import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/video_compress_quality.dart';
import 'package:image_shrinker/providers/config_provider.dart';

class VideoQualitySelector extends ConsumerWidget {
  const VideoQualitySelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current =
        ref.watch(configProvider.select((value) => value.videoCompressQuality));
    return DropdownButton(
        value: current,
        items: VideoCompressQuality.values
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.displayText()),
                ))
            .toList(),
        onChanged: (value) {
          if (value == null) {
            return;
          }
          final config = ref.read(configProvider);
          final configNotifier = ref.read(configProvider.notifier);
          configNotifier.state = config.copyWith(videoCompressQuality: value);
        });
  }
}
