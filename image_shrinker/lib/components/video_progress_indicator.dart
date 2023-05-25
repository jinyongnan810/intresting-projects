import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/components/loading/loading_screen.dart';
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
  @override
  void initState() {
    super.initState();
    _subscription = VideoCompress.compressProgress$.subscribe((progress) {
      if (progress.floor() == 100) {
        Future.delayed(
            const Duration(seconds: 1), () => LoadingScreen.instance().hide());
      }
      LoadingScreen.instance().show(
          context: context,
          text: 'Compressing: ${progress.toStringAsFixed(1)}%');
    });
  }

  @override
  void dispose() {
    _subscription.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
