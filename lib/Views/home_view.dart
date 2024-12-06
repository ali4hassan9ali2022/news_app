import 'package:flutter/material.dart';
import 'package:news_app/Widgets/list_card.dart';
import 'package:news_app/Widgets/news_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListCard(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            NewsListBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
