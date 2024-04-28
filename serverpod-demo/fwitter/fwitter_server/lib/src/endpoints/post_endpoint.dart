import 'package:fwitter_server/filter.dart';
import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint {
  Future<Post> save(Session session, Post item) async {
    return Post.db.insertRow(session, item);
  }

  Future<List<Post>> list(Session session, [Filter<Post>? filter]) async {
    return Post.db
        .find(session, where: filter == null ? null : (_) => filter.expression);
  }
}
