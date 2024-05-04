import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

typedef Json = Map<String, dynamic>;

sealed class Filter<T> {
  const Filter();
  bool apply(T obj);
  List<T> applyToList(Iterable<T> list) => list.where(apply).toList();
  Json toJson() => throw UnimplementedError();
}

@Freezed()
class PostFilter extends Filter<Post> with _$PostFilter {
  const PostFilter._();
  factory PostFilter.and(List<PostFilter> filters) = AndPostFilter;
  factory PostFilter.or(List<PostFilter> filters) = OrPostFilter;
  factory PostFilter.createdAfter(DateTime value) = PostFilterCreatedAfter;
  factory PostFilter.createdBefore(DateTime value) = PostFilterCreatedBefore;
  factory PostFilter.bodyContains(String value) = PostFilterBodyContains;

  factory PostFilter.fromJson(Json json) => _$PostFilterFromJson(json);

  @override
  bool apply(covariant Post obj) => map(
      and: (f) => f.filters.every((filter) => filter.apply(obj)),
      or: (f) => f.filters.any((filter) => filter.apply(obj)),
      createdAfter: (f) => obj.createdAt.isAfter(f.value),
      createdBefore: (f) => obj.createdAt.isBefore(f.value),
      bodyContains: (f) => obj.body.contains(f.value));
}
