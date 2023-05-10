import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/providers/config_provider.dart';

class PercentageSlider extends ConsumerWidget {
  const PercentageSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enabled =
        ref.watch(configProvider.select((value) => value.usePercentage));
    final percentage =
        ref.watch(configProvider.select((value) => value.percentage));
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
              configNotifier.state =
                  config.copyWith(usePercentage: true, usePixel: false);
            }),
        const Text('Use Percentage'),
        Slider(
            value: percentage / 100,
            min: 0.2,
            max: 3.0,
            divisions: 14,
            onChanged: (newValue) {
              final config = ref.read(configProvider);
              final configNotifier = ref.read(configProvider.notifier);
              configNotifier.state =
                  config.copyWith(percentage: (newValue * 100).floor());
            },
            label: 'shrink to $percentage%')
      ],
    );
  }
}
