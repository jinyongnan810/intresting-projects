import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_flutter/data/post_repository.dart';

part 'new_post_bloc.freezed.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc(this.repo, super.initialState) {
    on<NewPostEvent>(
      (event, emit) async {
        await event.map(
          save: (event) async {
            final savedPost = await repo.save(event.post);
            emit(state.copyWith(post: savedPost));
          },
        );
      },
    );
  }
  final PostRepository repo;
}

@Freezed()
class NewPostEvent with _$NewPostEvent {
  const factory NewPostEvent.save(Post post) = SavePostEvent;
}

@Freezed()
class NewPostState with _$NewPostState {
  const factory NewPostState({
    Post? post,
  }) = _NewPostState;
  const NewPostState._();
  factory NewPostState.initial() => const NewPostState();
}

class TimelineError {}
