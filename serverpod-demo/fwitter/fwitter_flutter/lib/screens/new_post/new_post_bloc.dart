import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_flutter/data/post_repository.dart';

part 'new_post_bloc.freezed.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc(this.repo, super.initialState) {
    on<NewPostEvent>(
      (event, emit) {
        event.map(
          save: (event) async {
            await repo.save(event.post);
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
    String? body,
  }) = _NewPostState;
  const NewPostState._();
  factory NewPostState.initial() => const NewPostState();
}

class TimelineError {}
