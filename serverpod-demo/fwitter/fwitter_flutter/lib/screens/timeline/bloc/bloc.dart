import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_flutter/data/post_repository.dart';

part 'bloc.freezed.dart';

class TimelineBloc extends Bloc<TimelineEvent, TimelineState> {
  TimelineBloc(this.repo, super.initialState) {
    on<TimelineEvent>(
      (event, emit) {},
    );
  }
  final PostRepository repo;
}

@Freezed()
class TimelineEvent with _$TimelineEvent {
  const factory TimelineEvent.save(Post post) = SavePostEvent;
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
