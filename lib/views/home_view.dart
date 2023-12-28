import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';
import 'package:news_app/widgets/news_items.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> cateList = const [
    CategoryModel(
        imageAssetUrl: "assets/business.png", categoryName: "Business"),
    CategoryModel(
        imageAssetUrl: "assets/entertaiment.png", categoryName: "Entertaiment"),
    CategoryModel(imageAssetUrl: "assets/general.png", categoryName: "General"),
    CategoryModel(imageAssetUrl: "assets/health.png", categoryName: "Health"),
    CategoryModel(imageAssetUrl: "assets/science.png", categoryName: "Science"),
    CategoryModel(imageAssetUrl: "assets/sports_1.png", categoryName: "Sports"),
    CategoryModel(
        imageAssetUrl: "assets/technology.png", categoryName: "Technology"),
  ];
  final List<CategoryModel> newsList = const [
    CategoryModel(
        imageAssetUrl: "assets/business.png", categoryName: "Business"),
    CategoryModel(
        imageAssetUrl: "assets/entertaiment.png", categoryName: "Entertaiment"),
    CategoryModel(imageAssetUrl: "assets/general.png", categoryName: "General"),
    CategoryModel(imageAssetUrl: "assets/health.png", categoryName: "Health"),
    CategoryModel(imageAssetUrl: "assets/science.png", categoryName: "Science"),
    CategoryModel(imageAssetUrl: "assets/sports_1.png", categoryName: "Sports"),
    CategoryModel(
        imageAssetUrl: "assets/technology.png", categoryName: "Technology"),
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cateList.length,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    categoryName: cateList[index].categoryName,
                    imageAssetUrl: cateList[index].imageAssetUrl,
                  );
                }),
          ),
          Expanded(
            flex: 7,
            child: ListView.builder(
                itemCount: newsList.length,
                itemBuilder: (context, index) {
                  return NewsItem(
                    categoryName: newsList[index].categoryName,
                    imageAssetUrl: newsList[index].imageAssetUrl,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
