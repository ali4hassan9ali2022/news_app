import 'package:flutter/material.dart';
import 'package:news_app/Models/item_model.dart';
import 'package:news_app/Views/categories_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoriesView(category: item.categoryName);
        },));
      },
      child: Container(
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
      ),
    );
  }
}
