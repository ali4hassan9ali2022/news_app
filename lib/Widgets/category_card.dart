import 'package:flutter/material.dart';
import 'package:news_app/Models/item_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        image:  DecorationImage(
            image: AssetImage(item.image), fit: BoxFit.fill),
      ),
      child:  Center(
        child: Text(
          item.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
