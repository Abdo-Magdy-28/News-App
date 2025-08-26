import 'package:flutter/material.dart';
import 'package:new_app/widgets/news_list_view_builder.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.categoryName});
  final String categoryName;
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
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          NewsListViewBuilder(category: categoryName),
        ],
      ),
    );
  }
}
