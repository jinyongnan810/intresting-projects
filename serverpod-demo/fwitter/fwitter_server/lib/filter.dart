import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:serverpod/serverpod.dart';

extension FilterPosts<T> on Filter<T> {
  Expression get expression {
    if (this is ComboFilter<T>) {
      return (this as ComboFilter<T>).expression;
    }
    if (this is PostFilter) {
      return (this as PostFilter).expression;
    }

    throw Exception('Unknown filter type: $runtimeType');
  }
}

extension on PostFilter {
  Expression get expression => map(
      createdAfter: (filter) => Post.t.createdAt > filter.value,
      createdBefore: (filter) => Post.t.createdAt < filter.value,
      bodyContains: (filter) => Post.t.body.like('%${filter.value}%'));
}

extension ComboFilterExpression<T> on ComboFilter<T> {
  Expression get expression {
    Expression? expression;
    for (final filter in filters) {
      if (expression == null) {
        expression = filter.expression;
      } else {
        if (logic == BooleanLogic.and) {
          expression = expression & filter.expression;
        } else {
          expression = expression | filter.expression;
        }
      }
    }
    return expression!;
  }
}
