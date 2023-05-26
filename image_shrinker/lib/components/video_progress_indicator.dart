import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/file_mode.dart';
import 'package:image_shrinker/providers/file_mode_provider.dart';
import 'package:video_compress/video_compress.dart';

class VideoProgressIndicator extends ConsumerStatefulWidget {
  const VideoProgressIndicator({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoProgressIndicatorState();
}

class _VideoProgressIndicatorState
    extends ConsumerState<VideoProgressIndicator> {
  late Subscription _subscription;
  double _progress = 0;
  @override
  void initState() {
    super.initState();
    // FIXME: progress getting like this
    // flutter: 83.28122
    // flutter: 100.0
    // flutter: 84.642914
    // flutter: 100.0
    // flutter: 86.01239
    // flutter: 100.0
    // flutter: 87.33517
    // flutter: 100.0
    // flutter: 88.66574
    // flutter: 100.0
    // flutter: 89.677284
    // flutter: 100.0
    // flutter: 93.29142
    // flutter: 100.0
    _subscription = VideoCompress.compressProgress$.subscribe((progress) {
      setState(() {
        _progress = progress;
        print(_progress);
      });
    });
  }

  @override
  void dispose() {
    _subscription.unsubscribe();
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shouldShow = ref.watch(fileModeProvider) == FileMode.video;
    return shouldShow
        ? Text('Compressing: ${_progress.toStringAsFixed(1)}%')
        : const SizedBox.shrink();
  }
}
