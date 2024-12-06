import 'package:flutter/material.dart';
import 'package:news_app/Models/item_model.dart';
import 'package:news_app/Widgets/category_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});
  final List<ItemModel> item = const [
    ItemModel(categoryName: "business", image: "assets/business.avif"),
    ItemModel(categoryName: "entertainment", image: "assets/entertaiment.avif"),
    ItemModel(categoryName: "health", image: "assets/health.avif"),
    ItemModel(categoryName: "science", image: "assets/science.avif"),
    ItemModel(categoryName: "sports", image: "assets/sports.avif"),
    ItemModel(categoryName: "technology", image: "assets/technology.jpeg"),
    ItemModel(categoryName: "general", image: "assets/general.avif"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CategoryCard(
              item: item[i],
            ),
          );
        },
      ),
    );
  }
}
