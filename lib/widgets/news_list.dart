import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/news_items.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    required this.theGeneralNewsList,
  });

  final List<NewsModel> theGeneralNewsList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: theGeneralNewsList.length, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsItem(
            news: theGeneralNewsList[index],
          ),
        );
      }),
    );
  }
}
