enum FileMode { image, video }

extension FileModeTypes on FileMode {
  List<String> supportedExtension() {
    switch (this) {
      case FileMode.image:
        return ['.png', '.jpg'];
      case FileMode.video:
        return ['.mp4', '.mov'];
    }
  }
}
