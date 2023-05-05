import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:image/image.dart' as img;

class ImageShrinkHelper {
  static Future<bool> shrink(File file) async {
    final fileAsImage = img.decodeImage(file.readAsBytesSync());
    if (fileAsImage == null) {
      return false;
    }

    // await Future<void>.delayed(const Duration(seconds: 1));

    final directoryExists =
        Directory('/Users/kinyuunan/Desktop/image_shrinker_output')
            .existsSync();
    if (!directoryExists) {
      Directory('/Users/kinyuunan/Desktop/image_shrinker_output').createSync();
    }

    final resizedImage = img.copyResize(
      fileAsImage,
      width: (fileAsImage.width * 0.5).floor(),
    );
    final name = basename(file.path);
    return img.encodePngFile(
        '/Users/kinyuunan/Desktop/image_shrinker_output/$name', resizedImage);
  }
}
