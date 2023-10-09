import 'package:flutter/material.dart';
import 'package:news/http_helper/news_http.dart';
import 'package:news/models/news.dart';
import 'package:news/widgtes/item_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newsHttp = NewsHttp();
  List<NewsModel> news = [];

  @override
  void initState() {
    getAllNews();
    super.initState();
  }

  getAllNews() async {
   news = await newsHttp.getNews();
   setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: news.length,
            itemBuilder: (BuildContext context, int index) { 
              return ItemNews(newsModel: news[index]);
            }
          ),
        )
      ),
    );
  }
}