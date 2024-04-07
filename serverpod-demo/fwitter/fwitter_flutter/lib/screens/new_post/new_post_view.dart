import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwitter_client/fwitter_client.dart';
import 'package:fwitter_flutter/data/post_repository.dart';
import 'package:fwitter_flutter/screens/new_post/new_post_bloc.dart';
import 'package:get_it/get_it.dart';

class NewPostView extends StatefulWidget {
  const NewPostView({super.key});

  @override
  State<NewPostView> createState() => _NewPostViewState();
}

class _NewPostViewState extends State<NewPostView> {
  late final NewPostBloc bloc;
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    bloc = NewPostBloc(GetIt.I<PostRepository>(), NewPostState.initial());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: bloc,
      listener: (context, NewPostState state) {
        if (state.post?.id != null) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Post'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _controller,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.done),
          onPressed: () {
            bloc.add(
              SavePostEvent(
                Post(
                  author: 'me',
                  body: _controller.text,
                  createdAt: DateTime.now(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
