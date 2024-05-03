import 'package:fwitter_shared/fwitter_shared.dart';

abstract class ModelBindings<T> {
  const ModelBindings();
  int? getId(T obj);
  Map<String, Object?> toJson(T obj);
  T fromJson(Map<String, Object?> json);
  int sortDesc(T a, T b);
}

abstract class Repository<T> {
  Repository({required this.bindings});
  final ModelBindings<T> bindings;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final saved = await persist(item);
    _localCache[bindings.getId(saved)!] = saved;
    return saved;
  }

  Future<T> persist(T item);

  Future<List<T>> list() async {
    final items = await load();
    for (final item in items) {
      _localCache[bindings.getId(item)!] = item;
    }
    return _localCache.values.toList()..sort(bindings.sortDesc);
  }

  DateTime get maxCreatedAt => DateTime.now();

  Future<List<T>> refresh() async {
    final newItems = await loadRefresh();
    for (final item in newItems) {
      _localCache[bindings.getId(item)!] = item;
    }
    return _localCache.values.toList()..sort(bindings.sortDesc);
  }

  Future<List<T>> load([Filter? filter]);
  Future<List<T>> loadRefresh();
}
