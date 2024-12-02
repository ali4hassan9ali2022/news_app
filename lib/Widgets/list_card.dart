import 'package:flutter/material.dart';
import 'package:news_app/Models/item_model.dart';
import 'package:news_app/Widgets/category_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});
  final List<ItemModel> item = const [
    ItemModel(categoryName: "Business", image: "assets/business.avif"),
    ItemModel(categoryName: "Entertaiment", image: "assets/entertaiment.avif"),
    ItemModel(categoryName: "Health", image: "assets/health.avif"),
    ItemModel(categoryName: "Science", image: "assets/science.avif"),
    ItemModel(categoryName: "Sports", image: "assets/sports.avif"),
    ItemModel(categoryName: "Technology", image: "assets/technology.jpeg"),
    ItemModel(categoryName: "General", image: "assets/general.avif"),
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
