import 'package:fwitter_flutter/data/data.dart';
import 'package:fwitter_shared/data/filters.dart';

class LocalSource<T> extends DataContract<T> {
  LocalSource(this.bindings);
  final _localCache = <int, T>{};
  final ModelBindings<T> bindings;
  @override
  Future<List<T>> list([Filter<T>? filter]) async {
    if (filter != null) {
      return filter.applyToList(_localCache.values);
    }
    return _localCache.values.toList();
  }

  @override
  Future<T> save(T item) async {
    final id = bindings.getId(item);
    assert(id != null, 'Id must not be null');
    _localCache[id!] = item;
    return item;
  }
}

abstract class RemoteSource<T> extends DataContract<T> {
  @override
  Future<T> save(T item);
  @override
  Future<List<T>> list([Filter<T>? filter]);
}

class ServerpodSource<T> extends RemoteSource<T> {
  ServerpodSource({required this.saveHandler, required this.listHandler});
  final Future<T> Function(T item) saveHandler;
  final Future<List<T>> Function([Filter<T>? filter]) listHandler;
  @override
  Future<List<T>> list([Filter<T>? filter]) async => listHandler(filter);

  @override
  Future<T> save(T item) async => saveHandler(item);
}
