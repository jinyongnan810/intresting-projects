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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Row(
        children: [
          const Text('Select Quality'),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                    Colors.purpleAccent
                    //add more colors
                  ]),
                  border: Border.all(color: Colors.black38, width: 3),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57), blurRadius: 5)
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: DropdownButton(
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                    iconEnabledColor: Colors.white,
                    dropdownColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    hint: const Text('Quality'),
                    value: current,
                    icon: const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.arrow_circle_down_sharp)),
                    isExpanded: true,
                    underline: Container(),
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
                      configNotifier.state =
                          config.copyWith(videoCompressQuality: value);
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
