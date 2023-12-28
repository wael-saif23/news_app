import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryName, required this.imageAssetUrl});
  final String categoryName;
  final String imageAssetUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * .15,
        width: MediaQuery.of(context).size.width * .55,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
              image: AssetImage(imageAssetUrl), fit: BoxFit.cover),
          // color: Colors.green
        ),
        child: Text(categoryName,
            style:
                TextStyle(color: Colors.white.withOpacity(.5), fontSize: 16)),
      ),
    );
  }
}
