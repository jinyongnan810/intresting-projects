import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_flutter/data/post_repository.dart';

part 'timeline_bloc.freezed.dart';

class TimelineBloc extends Bloc<TimelineEvent, TimelineState> {
  TimelineBloc(this.repo, super.initialState) {
    on<TimelineEvent>(
      (event, emit) async {
        await event.map(
          load: (e) async {
            final posts = await repo.list();
            emit(state.copyWith(posts: posts, error: null));
          },
        );
      },
    );
  }
  final PostRepository repo;
}

@Freezed()
class TimelineEvent with _$TimelineEvent {
  const factory TimelineEvent.load() = LoadPostsEvent;
}

@Freezed()
class TimelineState with _$TimelineState {
  const factory TimelineState({
    required List<Post> posts,
    TimelineError? error,
  }) = _TimelineState;
  const TimelineState._();
  factory TimelineState.initial() => const TimelineState(posts: []);
}

class TimelineError {}
