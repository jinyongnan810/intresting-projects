import 'package:cross_file/cross_file.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDroppedFilesProvider =
    StateProvider.autoDispose<List<XFile>>((ref) => []);
