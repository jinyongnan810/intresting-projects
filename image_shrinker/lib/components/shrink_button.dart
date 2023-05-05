import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/helpers/image_shrink_helper.dart';

import 'package:image_shrinker/providers/current_dropped_files_provider.dart';
import 'package:image_shrinker/providers/loading_provider.dart';

class ShrinkButton extends ConsumerWidget {
  const ShrinkButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final originalFiles = ref.read(currentDroppedFilesProvider);
        if (originalFiles.isEmpty) {
          return;
        }
        ref.read(loadingProvider.notifier).state = true;
        for (final file in originalFiles) {
          await ImageShrinkHelper.shrink(File(file.path));
        }
        ref.read(loadingProvider.notifier).state = false;
      },
      child: const Text('Shrink'),
    );
  }
}
