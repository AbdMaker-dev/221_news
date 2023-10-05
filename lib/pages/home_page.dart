import 'package:flutter/material.dart';
import 'package:news/http_helper/news_http.dart';
import 'package:news/models/news.dart';

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
    return const Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}