import 'package:fwitter_client/fwitter_client.dart';

import 'package:fwitter_flutter/data/data.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:injectable/injectable.dart';

class PostBinding extends ModelBindings<Post> {
  const PostBinding();
  @override
  int? getId(Post obj) => obj.id;

  @override
  Map<String, Object?> toJson(Post obj) => obj.toJson();

  @override
  Post fromJson(Map<String, Object?> json) => Post.fromJson(json, Protocol());

  @override
  int sortDesc(Post a, Post b) => b.createdAt.compareTo(a.createdAt);
}

@Singleton()
class PostRepository extends Repository<Post> {
  PostRepository(this.client) : super(bindings: const PostBinding());
  final Client client;

  @override
  Future<Post> persist(Post item) async {
    return client.post.save(item);
  }

  @override
  Future<List<Post>> load([covariant PostFilter? filter]) async {
    return client.post.list(filter);
  }

  @override
  Future<List<Post>> loadRefresh() =>
      load(PostFilter.createdAfter(maxCreatedAt));
}
