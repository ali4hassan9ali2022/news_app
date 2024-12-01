import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 85,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage("assets/entertaiment.avif"), fit: BoxFit.fill),
      ),
      child: const Center(
        child: Text(
          "Entertaiment",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
