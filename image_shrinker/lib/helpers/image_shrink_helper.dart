import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:image_shrinker/providers/config_provider.dart';
import 'package:path/path.dart';
import 'package:image/image.dart' as img;

class ImageShrinkHelper {
  static Future<String?> shrink(File file, ShrinkConfig config) async {
    final fileAsImage = img.decodeImage(file.readAsBytesSync());
    if (fileAsImage == null) {
      return null;
    }

    // await Future<void>.delayed(const Duration(seconds: 1));
    try {
      final directoryExists =
          Directory('/Users/kinyuunan/Desktop/image_shrinker_output')
              .existsSync();
      if (!directoryExists) {
        Directory('/Users/kinyuunan/Desktop/image_shrinker_output')
            .createSync();
      }

      final resizedImage = img.copyResize(
        fileAsImage,
        width: (fileAsImage.width * 0.5).floor(),
      );
      final name = basename(file.path);
      final result = await img.encodePngFile(
          '/Users/kinyuunan/Desktop/image_shrinker_output/$name', resizedImage);
      if (!result) {
        throw Exception('Error when shrinking.');
      }
    } catch (e) {
      return e.toString();
    }
    return null;
  }
}
