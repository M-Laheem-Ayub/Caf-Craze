// ignore_for_file: file_names

import 'package:cafe_craze/MyText.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final List categories;
  final Function(int) onCategoryTap;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: (index == categories.length - 1) ? 0 : 29.0,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => onCategoryTap(index),
                  child: MyText(
                    color: categories[index][1] ? Colors.orange : Colors.grey,
                    text: categories[index][0],
                    size: 14,
                    fWeight: FontWeight.w500,
                  ),
                ),
                MyText(
                  text: categories[index][1] ? "." : "",
                  size: 70,
                  height: -0.25,
                  color: Colors.orange,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
