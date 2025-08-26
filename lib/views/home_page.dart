import 'package:flutter/material.dart';

import 'package:new_app/widgets/categoryListView.dart';
import 'package:new_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 30),
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(color: Color(0xffd2b986)),
              ),
            ],
          ),
        ),
      ),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListView()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          NewsListViewBuilder(category: 'general'),
        ],
      ),
    );
  }
}
