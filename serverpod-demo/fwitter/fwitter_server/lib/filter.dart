import 'package:fwitter_server/src/generated/protocol.dart';
import 'package:fwitter_shared/fwitter_shared.dart';
import 'package:serverpod/serverpod.dart';

extension FilterExpression on Filter {
  Expression get expression {
    return switch (this) {
      PostFilter f => f.expression,
    };
  }
}

enum BooleanLogic { and, or }

Expression combine(List<Filter> filters, BooleanLogic logic) {
  Expression? expression;
  for (final filter in filters) {
    if (expression == null) {
      expression = filter.expression;
    } else {
      expression = switch (logic) {
        BooleanLogic.and => expression = expression & filter.expression,
        BooleanLogic.or => expression = expression | filter.expression,
      };
    }
  }
  return expression!;
}

extension FilterPosts on PostFilter {
  Expression get expression => map(
      and: (andFilter) => combine(andFilter.filters, BooleanLogic.and),
      or: (orFilter) => combine(orFilter.filters, BooleanLogic.or),
      createdAfter: (filter) => Post.t.createdAt > filter.value,
      createdBefore: (filter) => Post.t.createdAt < filter.value,
      bodyContains: (filter) => Post.t.body.like('%${filter.value}%'));
}
