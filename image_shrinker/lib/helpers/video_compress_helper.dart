import 'package:video_compress/video_compress.dart';

class VideoCompressHelper {
  static Future<void> compress(String path) async {
    MediaInfo? mediaInfo = await VideoCompress.compressVideo(
      path,
      quality: VideoQuality.DefaultQuality,
      deleteOrigin: false,
      frameRate: 15,
    );
    print('compress to ${mediaInfo?.path}');
  }
}
