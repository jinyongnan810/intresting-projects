import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    _subscription = VideoCompress.compressProgress$.subscribe((progress) {
      setState(() {
        _progress = progress;
      });
    });
  }

  @override
  void dispose() {
    _subscription.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('${_progress.ceil()}%');
  }
}
