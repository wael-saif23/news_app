import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_list-builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("${category.categoryName} news "),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                NewsListBuilder(
                  category: category.categoryName,
                )
              ]),
        ));
  }
}
