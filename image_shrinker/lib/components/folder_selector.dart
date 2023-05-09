import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/providers/config_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FolderSelector extends ConsumerStatefulWidget {
  const FolderSelector({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FolderSelectorState();
}

class _FolderSelectorState extends ConsumerState<FolderSelector> {
  late final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final sharedPreferences = await SharedPreferences.getInstance();
      final lastFolder = sharedPreferences.getString('last-selected-folder');
      if (lastFolder != null) {
        _controller.text = lastFolder;
        final config = ref.read(configProvider);
        final configNotifier = ref.read(configProvider.notifier);
        configNotifier.state = config.copyWith(outputPath: lastFolder);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final outputPath =
        ref.watch(configProvider.select((value) => value.outputPath));
    _controller.text = outputPath;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Output to:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  readOnly: true,
                  enabled: false,
                ),
              ),
              TextButton(
                  onPressed: () async {
                    final String? directoryPath = await getDirectoryPath();
                    if (directoryPath == null) {
                      return;
                    }
                    final sharedPreferences =
                        await SharedPreferences.getInstance();
                    await sharedPreferences.setString(
                        'last-selected-folder', directoryPath);
                    final config = ref.read(configProvider);
                    final configNotifier = ref.read(configProvider.notifier);
                    configNotifier.state =
                        config.copyWith(outputPath: directoryPath);
                  },
                  child: const Text("Select"))
            ],
          ),
        ],
      ),
    );
  }
}
