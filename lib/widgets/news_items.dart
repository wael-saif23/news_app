import 'package:flutter/material.dart';

import 'package:news_app/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.news,
  });
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * .25,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(12)),
            image: DecorationImage(
                image: news.newsImage != null
                    ? AssetImage(news.newsImage!)
                    : const AssetImage("assets/unseen.png"),
                fit: BoxFit.cover),
          ),
          child: Stack(children: [
            Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Column(
                  children: [
                    Card(
                      color: Colors.white.withOpacity(.6),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(news.newsTitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ))
          ]),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(news.newsSubTitle != null ? news.newsSubTitle! : "...........",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.black54, fontSize: 16)),
      ],
    );
  }
}
