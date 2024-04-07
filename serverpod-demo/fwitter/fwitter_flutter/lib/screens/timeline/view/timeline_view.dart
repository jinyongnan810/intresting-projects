import 'package:flutter/material.dart';
import 'package:fwitter_flutter/data/post_repository.dart';
import 'package:fwitter_flutter/screens/new_post/new_post_view.dart';
import 'package:fwitter_flutter/screens/timeline/bloc/bloc.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => const NewPostView(),
            ),
          );
        },
      ),
    );
  }
}
