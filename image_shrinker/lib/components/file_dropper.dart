import 'package:desktop_drop/desktop_drop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/file_mode.dart';
import 'package:image_shrinker/providers/current_dropped_files_provider.dart';
import 'package:image_shrinker/providers/file_mode_provider.dart';

class FileDropper extends ConsumerWidget {
  const FileDropper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(fileModeProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        dashPattern: const [20, 8],
        color: Theme.of(context).primaryColor,
        strokeWidth: 5,
        strokeCap: StrokeCap.round,
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        child: DropTarget(
          onDragDone: (details) {
            final targets = details.files.where(
                (file) => mode.supportedExtension().any(file.path.endsWith));
            ref.read(currentDroppedFilesProvider.notifier).state =
                targets.toList();
          },
          onDragEntered: (details) {},
          onDragExited: (details) {},
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  '+',
                  style: TextStyle(
                      fontSize: 50, color: Theme.of(context).primaryColor),
                )),
          ),
        ),
      ),
    );
  }
}
