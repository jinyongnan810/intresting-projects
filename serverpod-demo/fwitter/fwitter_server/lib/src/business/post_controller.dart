import 'package:fwitter_server/filter.dart';
import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:serverpod/serverpod.dart';

class PostController {
  static Future<List<Post>> list(Session session, [PostFilter? filter]) =>
      session.db.find<Post>(where: filter?.expression);
}
