import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/providers/current_dropped_files_provider.dart';

class CurrentFiles extends ConsumerWidget {
  const CurrentFiles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(currentDroppedFilesProvider);
    if (files.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'These files are selected:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ...files.map((file) => Text('- ${file.path}'))
        ],
      ),
    );
  }
}
