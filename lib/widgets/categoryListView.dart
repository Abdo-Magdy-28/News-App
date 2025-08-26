import 'package:flutter/material.dart';
import 'package:new_app/models/CategoryModel.dart';

import 'category.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<Categorymodel> categories = [
    Categorymodel(name: 'Business', image: 'assets/business.png'),
    Categorymodel(name: 'Entertainment', image: 'assets/entertaiment.avif'),
    Categorymodel(name: 'General', image: 'assets/general.png'),
    Categorymodel(name: 'Health', image: 'assets/health.avif'),
    Categorymodel(name: 'Science', image: 'assets/science.avif'),
    Categorymodel(name: 'Sports', image: 'assets/sports.png'),
    Categorymodel(name: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Category(category: categories[index]);
        },
      ),
    );
  }
}
