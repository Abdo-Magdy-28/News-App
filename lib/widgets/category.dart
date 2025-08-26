import 'package:flutter/material.dart';
import 'package:new_app/models/CategoryModel.dart';
import 'package:new_app/views/categoryView.dart';

class Category extends StatelessWidget {
  final Categorymodel category;
  const Category({required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Categoryview(categoryName: category.name!);
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage(category.image!),
              fit: BoxFit.cover,
            ),
          ),
          width: 180,
          height: 125,
          child: Center(
            child: Text(
              category.name!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
