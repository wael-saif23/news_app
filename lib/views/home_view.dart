import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/news_list-builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> cateList = const [
    CategoryModel(
        imageAssetUrl: "assets/business.png", categoryName: "Business"),
    CategoryModel(
        imageAssetUrl: "assets/entertaiment.png",
        categoryName: "Entertainment"),
    CategoryModel(imageAssetUrl: "assets/health.png", categoryName: "Health"),
    CategoryModel(imageAssetUrl: "assets/science.png", categoryName: "Science"),
    CategoryModel(imageAssetUrl: "assets/sports_1.png", categoryName: "Sports"),
    CategoryModel(
        imageAssetUrl: "assets/technology.png", categoryName: "Technology"),
    CategoryModel(imageAssetUrl: "assets/general.png", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoryList(cateList: cateList)),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                const NewsListBuilder(
                  category: "general",
                )
              ]),
        ));
  }
}
