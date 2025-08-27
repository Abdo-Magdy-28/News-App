import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/articleModel.dart';
import 'package:new_app/services/NewsServices.dart';
import 'package:new_app/widgets/NewsTileListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewService(dio: Dio(), category: widget.category).getNews();
  }

  List<Articlemodel> articles = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return NewsTileListView(articles: Snapshot.data!);
        } else if (Snapshot.hasError) {
          return Text('OOOPs there is an error ');
        } else {
          return SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            ),
          );
        }
      },
    );
  }
}
