import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/providers/config_provider.dart';

class PixelSlider extends ConsumerWidget {
  const PixelSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enabled =
        !(ref.watch(configProvider.select((value) => value.usePercentage)));
    final pixel = ref.watch(configProvider.select((value) => value.pixel));
    return Row(
      children: [
        Checkbox(
            value: enabled,
            onChanged: (checked) {
              if (checked == null || !checked) {
                return;
              }
              final config = ref.read(configProvider);
              final configNotifier = ref.read(configProvider.notifier);
              configNotifier.state = config.copyWith(usePercentage: false);
            }),
        const Text('Use Pixel'),
        Slider(
            value: pixel.toDouble(),
            min: 32,
            max: 1024,
            divisions: 992,
            onChanged: (newValue) {
              final config = ref.read(configProvider);
              final configNotifier = ref.read(configProvider.notifier);
              configNotifier.state = config.copyWith(pixel: newValue.floor());
            },
            label: 'shrink to $pixel px')
      ],
    );
  }
}
