import 'package:flutter_riverpod/flutter_riverpod.dart';

final loadingProvider = StateProvider.autoDispose<bool>((ref) => false);
