import 'package:flutter/foundation.dart';
import 'package:image_shrinker/models/shrink_config.dart';
import 'package:video_compress/video_compress.dart';
import 'package:path/path.dart';

class VideoCompressHelper {
  static Future<void> compress(String path, ShrinkConfig config) async {
    try {
      // NOTE: currently not working with file names with spaces or non-ascii chars
      MediaInfo? mediaInfo = await VideoCompress.compressVideo(
        path,
        quality: VideoQuality.DefaultQuality,
        deleteOrigin: false,
        frameRate: 15,
      );
      if (mediaInfo == null) {
        debugPrint('no mediaInfo');
        return;
      }
      final file = mediaInfo.file;
      if (file == null) {
        debugPrint('no file');
        return;
      }
      final name = basename(path);
      await file.copy(join(config.outputPath, name));
      await file.delete();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
