import 'package:fwitter_server/src/business/business.dart';
import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint {
  Future<Post> save(Session session, Post item) =>
      Post.db.insertRow(session, item);

  Future<List<Post>> list(Session session, [PostFilter? filter]) =>
      PostController.list(session, filter);
}
