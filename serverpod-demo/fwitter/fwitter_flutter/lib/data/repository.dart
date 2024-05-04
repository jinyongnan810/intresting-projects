import 'package:fwitter_flutter/data/data.dart';
import 'package:fwitter_shared/fwitter_shared.dart';

abstract class ModelBindings<T> {
  const ModelBindings();
  int? getId(T obj);
  Map<String, Object?> toJson(T obj);
  T fromJson(Map<String, Object?> json);
  int sortDesc(T a, T b);
}

abstract class Repository<T> extends DataContract<T> {
  Repository({
    required this.bindings,
    required this.localSource,
    required this.remoteSource,
  });
  final ModelBindings<T> bindings;
  final LocalSource<T> localSource;
  final RemoteSource<T> remoteSource;

  @override
  Future<T> save(T item) async {
    final saved = await remoteSource.save(item);
    await localSource.save(saved);
    return saved;
  }

  @override
  Future<List<T>> list([Filter<T>? filter]) async {
    var items = await localSource.list(filter);
    if (items.isEmpty) {
      items = await remoteSource.list(filter);
      for (final item in items) {
        await localSource.save(item);
      }
    }
    return items..sort(bindings.sortDesc);
  }
}
