abstract class ModelBindings<T> {
  const ModelBindings();
  int? getId(T obj);
  Map<String, Object?> toJson(T obj);
  T fromJson(Map<String, Object?> json);
}

abstract class Repository<T> {
  Repository({required this.bindings});
  final ModelBindings<T> bindings;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final saved = await persist(item);
    _localCache[bindings.getId(item)!] = saved;
    return saved;
  }

  Future<T> persist(T item);
}
