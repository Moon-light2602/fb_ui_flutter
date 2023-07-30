import 'package:flutter/material.dart';

import '../models/post.dart';
import '../widgets/online_widget.dart';
import '../widgets/post_widget.dart';
import '../widgets/separator_widget.dart';
import '../widgets/stories_widget.dart';
import '../widgets/write_something_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const WriteSomethingWidget(),
          const SeparatorWidget(),
          const StoriesWidget(),
          for(Post post in posts) Column(
            children: <Widget>[
              const SeparatorWidget(),
              PostWidget(post: post),
            ],
          ),
          const SeparatorWidget(),
        ],
      ),
    );
  }
}