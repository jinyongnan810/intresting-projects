import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_shared/fwitter_shared.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

enum BooleanLogic { and, or }

typedef Json = Map<String, dynamic>;

abstract class Filter<T> {
  const Filter();
  bool apply(T obj);
  List<T> applyToList(Iterable<T> list) => list.where(apply).toList();
  Json toJson() => throw UnimplementedError();
  static Filter<T> fromJson<T>(Json json) => throw UnimplementedError();
}

// class FilterConverter<T> extends JsonConverter<List<Filter<T>>, Json> {
//   const FilterConverter();

//   @override
//   List<Filter<T>> fromJson(Json json) {
//     // TODO: implement fromJson
//     throw UnimplementedError();
//   }

//   @override
//   Json toJson(List<Filter<T>> object) {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }

// @Freezed(genericArgumentFactories: true)
// class ComboFilter<T> extends Filter<T> with _$ComboFilter<T> {
//   const ComboFilter._();
//   const factory ComboFilter.and(@FilterConverter<T>() List<Filter<T>> filters) =
//       AndFilter;
//   const factory ComboFilter.or(@FilterConverter<T>() List<Filter<T>> filters) =
//       OrFilter;

//   factory ComboFilter.fromJson(Json json, T Function(Object?) fromJsonT) =>
//       _$ComboFilterFromJson(json, fromJsonT);

//   @override
//   bool apply(T obj) => when(
//       and: (filters) => filters.every((filter) => filter.apply(obj)),
//       or: (filters) => filters.any((filter) => filter.apply(obj)));
// }

abstract class ComboFilter<T> extends Filter<T> {
  final List<Filter<T>> filters;
  final BooleanLogic logic;

  const ComboFilter(this.filters, this.logic);

  @override
  bool apply(T obj) {
    if (logic == BooleanLogic.and) {
      return filters.every((filter) => filter.apply(obj));
    } else {
      return filters.any((filter) => filter.apply(obj));
    }
  }
}

class AndFilter<T> extends ComboFilter<T> {
  const AndFilter(List<Filter<T>> filters) : super(filters, BooleanLogic.and);
}

class OrFilter<T> extends ComboFilter<T> {
  const OrFilter(List<Filter<T>> filters) : super(filters, BooleanLogic.or);
}

@Freezed()
class PostFilter extends Filter<Post> with _$PostFilter {
  const PostFilter._();
  factory PostFilter.createdAfter(DateTime value) = PostFilterCreatedAfter;
  factory PostFilter.createdBefore(DateTime value) = PostFilterCreatedBefore;
  factory PostFilter.bodyContains(String value) = PostFilterBodyContains;

  factory PostFilter.fromJson(Json json) => _$PostFilterFromJson(json);

  @override
  bool apply(Post obj) => map(
      createdAfter: (f) => obj.createdAt.isAfter(f.value),
      createdBefore: (f) => obj.createdAt.isBefore(f.value),
      bodyContains: (f) => obj.body.contains(f.value));
}
