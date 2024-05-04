import 'package:fwitter_shared/fwitter_shared.dart';

abstract class DataContract<T> {
  Future<T> save(T item);
  Future<List<T>> list([Filter<T>? filter]);
}
