import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/helpers/image_shrink_helper.dart';
import 'package:image_shrinker/helpers/video_compress_helper.dart';
import 'package:image_shrinker/models/file_mode.dart';
import 'package:image_shrinker/providers/config_provider.dart';

import 'package:image_shrinker/providers/current_dropped_files_provider.dart';
import 'package:image_shrinker/providers/file_mode_provider.dart';
import 'package:image_shrinker/providers/loading_provider.dart';

class ShrinkButton extends ConsumerWidget {
  const ShrinkButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFiles = ref.watch(currentDroppedFilesProvider);
    final mode = ref.watch(fileModeProvider);
    final enabled = currentFiles.isNotEmpty;
    final isImage = mode == FileMode.image;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
        onPressed: enabled
            ? () async {
                final originalFiles = ref.read(currentDroppedFilesProvider);
                if (originalFiles.isEmpty) {
                  return;
                }
                final config = ref.read(configProvider);
                ref.read(loadingProvider.notifier).state = true;
                for (final file in originalFiles) {
                  if (isImage) {
                    final _ =
                        await ImageShrinkHelper.shrink(File(file.path), config);
                  } else {
                    final _ =
                        await VideoCompressHelper.compress(file.path, config);
                  }
                }
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Shrink Finished')));
                }
                ref.read(loadingProvider.notifier).state = false;
              }
            : null,
        child: Text(isImage ? 'Shrink' : 'Compress'),
      ),
    );
  }
}
