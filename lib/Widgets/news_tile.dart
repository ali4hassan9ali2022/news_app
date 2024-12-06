import 'package:flutter/material.dart';
import 'package:news_app/Models/articles_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: articlesModel.image != null
                ? Image.network(
                    articlesModel.image!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                : Image.asset(
                    "assets/science.avif",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articlesModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articlesModel.subTitle ?? "Love me",
          maxLines: 2,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
