import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/file_mode.dart';
import 'package:image_shrinker/providers/current_dropped_files_provider.dart';
import 'package:image_shrinker/providers/file_mode_provider.dart';

class ChangeModeButton extends ConsumerWidget {
  const ChangeModeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isImageMode = ref.watch(fileModeProvider) == FileMode.image;
    final text = isImageMode ? 'Video Mode' : 'Image Mode';
    return TextButton(
      onPressed: () {
        if (isImageMode) {
          ref.read(fileModeProvider.notifier).state = FileMode.video;
        } else {
          ref.read(fileModeProvider.notifier).state = FileMode.image;
        }
        ref.read(currentDroppedFilesProvider.notifier).state = [];
      },
      child: Text(text),
    );
  }
}
