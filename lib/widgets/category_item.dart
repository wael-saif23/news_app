import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryView(
                    category: category,
                  ))),
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width * .55,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                image: AssetImage(category.imageAssetUrl), fit: BoxFit.cover),
            // color: Colors.green
          ),
          child: Center(
            child: Text(category.categoryName,
                style: TextStyle(
                    color: Colors.white.withOpacity(.5), fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
