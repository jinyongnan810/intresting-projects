import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_shrinker/models/file_mode.dart';

final fileModeProvider =
    StateProvider.autoDispose<FileMode>((ref) => FileMode.image);
