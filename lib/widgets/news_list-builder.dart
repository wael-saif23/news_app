import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';

import 'package:news_app/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
  });

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).dioGet();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return NewsList(
              theGeneralNewsList: snapShot.data!,
            );
          } else if (snapShot.hasError) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: const Center(
                    child: Text("oops there was an error , try agane later")),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                ),
              ),
            );
          }
        });
  }
}
