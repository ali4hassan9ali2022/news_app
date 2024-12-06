import 'package:flutter/material.dart';
import 'package:news_app/Widgets/news_tile.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: NewsTile(),
        );
      },
    );
  }
}
