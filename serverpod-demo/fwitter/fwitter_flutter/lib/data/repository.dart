abstract class ModelWrapper {
  int? get id;
  Map<String, Object?> toJson();
}

abstract class Repository<T extends ModelWrapper> {
  Repository({required this.fromJson});
  final T Function(Map<String, Object?>) fromJson;
  final _localCache = <int, T>{};

  Future<T> save(T item) async {
    final saved = await persist(item);
    _localCache[saved.id!] = saved;
    return saved;
  }

  Future<T> persist(T item);
}
