import 'package:flutter/material.dart';
import 'package:new_app/models/articleModel.dart';

import 'package:new_app/widgets/newsTile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key, required this.articles});
  final List<Articlemodel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Newstile(article: articles[index]);
      }),
    );
  }
}
