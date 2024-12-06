import 'package:flutter/material.dart';
import 'package:news_app/Models/articles_model.dart';
import 'package:news_app/Widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});
  final List<ArticlesModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: NewsTile(
            articlesModel: articles[index],
          ),
        );
      },
    ));
  }
}
