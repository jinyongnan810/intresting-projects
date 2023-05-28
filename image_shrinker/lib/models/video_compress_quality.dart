import 'package:video_compress/video_compress.dart';

enum VideoCompressQuality {
  size_640_480,
  size_960_540,
  size_1280_720,
  size_1920_1080,
  generalDefault,
  generalLow,
  generalMedium,
  generalHigh,
}

extension DisplayText on VideoCompressQuality {
  String displayText() {
    switch (this) {
      case VideoCompressQuality.size_640_480:
        return '640 x 480';
      case VideoCompressQuality.size_960_540:
        return '960 x 540';
      case VideoCompressQuality.size_1280_720:
        return '1280 x 720';
      case VideoCompressQuality.size_1920_1080:
        return '1920 x 1080';
      case VideoCompressQuality.generalDefault:
        return 'default';
      case VideoCompressQuality.generalLow:
        return 'low';
      case VideoCompressQuality.generalMedium:
        return 'medium';
      case VideoCompressQuality.generalHigh:
        return 'high';
    }
  }
}

extension CompressQuality on VideoCompressQuality {
  VideoQuality getActualQuality() {
    switch (this) {
      case VideoCompressQuality.size_640_480:
        return VideoQuality.Res640x480Quality;
      case VideoCompressQuality.size_960_540:
        return VideoQuality.Res960x540Quality;
      case VideoCompressQuality.size_1280_720:
        return VideoQuality.Res1280x720Quality;
      case VideoCompressQuality.size_1920_1080:
        return VideoQuality.Res1920x1080Quality;
      case VideoCompressQuality.generalDefault:
        return VideoQuality.DefaultQuality;
      case VideoCompressQuality.generalLow:
        return VideoQuality.LowQuality;
      case VideoCompressQuality.generalMedium:
        return VideoQuality.MediumQuality;
      case VideoCompressQuality.generalHigh:
        return VideoQuality.HighestQuality;
    }
  }
}
