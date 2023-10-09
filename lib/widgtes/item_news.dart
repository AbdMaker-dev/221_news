import 'package:flutter/material.dart';
import 'package:news/models/news.dart';

class ItemNews extends StatelessWidget {
  NewsModel newsModel;
  ItemNews({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/pubspec.png', width: 100),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newsModel.title ?? "---", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              Text(newsModel.detail ?? "---")
            ],
          )
        ],
      ),
    );
  }
}
