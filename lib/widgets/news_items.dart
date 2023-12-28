import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(
      {super.key, required this.categoryName, required this.imageAssetUrl});
  final String categoryName;
  final String imageAssetUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * .3,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                  image: AssetImage(imageAssetUrl), fit: BoxFit.cover),
              // color: Colors.green
            ),
          ),
          Text(categoryName,
              style: const TextStyle(color: Colors.black, fontSize: 16))
        ],
      ),
    );
  }
}
