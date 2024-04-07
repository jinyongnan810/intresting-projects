import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwitter_flutter/data/post_repository.dart';
import 'package:fwitter_flutter/screens/new_post/new_post_view.dart';
import 'package:fwitter_flutter/screens/timeline/view/timeline_bloc.dart';
import 'package:get_it/get_it.dart';

class TimelineView extends StatefulWidget {
  const TimelineView({super.key});

  @override
  State<TimelineView> createState() => _TimelineViewState();
}

class _TimelineViewState extends State<TimelineView> {
  late final TimelineBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = TimelineBloc(GetIt.I<PostRepository>(), TimelineState.initial());
    bloc.add(const TimelineEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TimelineBloc, TimelineState>(
        bloc: bloc,
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              final post = state.posts[index];
              return ListTile(
                title: Text(post.body),
                subtitle: Text(post.createdAt.toIso8601String()),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => const NewPostView(),
            ),
          );
          bloc.add(const TimelineEvent.load());
        },
      ),
    );
  }
}
