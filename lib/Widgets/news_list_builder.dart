import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/news_list.dart';
import 'package:news_app/services/news_services.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const NewsList();
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("There was an Error"),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
