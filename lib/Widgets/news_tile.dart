import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/science.avif",
              fit: BoxFit.cover,
              width: double.infinity,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Ali Hassan Ali Kasrawyal Ali Hassan Ali Kasrawyal Ali Hassan Ali Kasrawyal",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Ali Hassan Ali Kasrawyal Ali Hassan Ali Kasrawyal Ali Hassan Ali Kasrawyal",
          maxLines: 2,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
