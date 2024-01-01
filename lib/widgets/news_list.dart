import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_servies.dart';
import 'package:news_app/widgets/news_items.dart';

class NewsList extends StatefulWidget {
  const NewsList({
    super.key,
  });

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<NewsModel> theGeneralNewsList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    theGeneralNewsList = await NewsServices(dio: Dio()).dioGet();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            ),
          )
        : SliverList(
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
