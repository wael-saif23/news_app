import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_servies.dart';

import 'package:news_app/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
  });

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
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
        : NewsList(
            theGeneralNewsList: theGeneralNewsList,
          );
  }
}
