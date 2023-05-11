import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:image_shrinker/models/shrink_config.dart';
// ignore: depend_on_referenced_packages
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
      final directoryExists = Directory(config.outputPath).existsSync();
      if (!directoryExists) {
        Directory(config.outputPath).createSync();
      }

      final width = config.usePixel
          ? config.pixel
          : (fileAsImage.width * config.percentage / 100);

      final resizedImage = img.copyResize(
        fileAsImage,
        width: width.floor(),
      );
      final name = basename(file.path);
      final result =
          await img.encodePngFile('${config.outputPath}/$name', resizedImage);
      if (!result) {
        throw Exception('Error when shrinking.');
      }
    } catch (e) {
      return e.toString();
    }
    return null;
  }
}
