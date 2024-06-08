import 'package:fwitter_server/src/business/business.dart';
import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod/src/database/database.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<Session>()])
@GenerateNiceMocks([MockSpec<Database>()])
import 'post_controller_test.mocks.dart';

void main() {
  group('PostController should', () {
    final post1 = Post(
        author: 'test-user1', body: 'test-body1', createdAt: DateTime.now());
    test('list posts(single)', () {
      final session = MockSession();
      final db = MockDatabase();
      when(session.db).thenReturn(db);
      when(db.find<Post>(where: anyNamed('where')))
          .thenAnswer((_) => Future.value([post1]));
      PostController.list(session).then((posts) {
        expect(posts.length, 1);
        expect(posts[0].author, post1.author);
        expect(posts[0].body, post1.body);
        expect(posts[0].createdAt, post1.createdAt);
      });
    });
  });
}
