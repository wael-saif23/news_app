import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.cateList,
  });

  final List<CategoryModel> cateList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cateList.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              category: cateList[index],
            );
          }),
    );
  }
}
