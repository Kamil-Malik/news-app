import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../model/news.dart';

class NewsHomeScreen extends StatefulWidget {
  const NewsHomeScreen({super.key});

  @override
  State createState() {
    return _NewsHomeScreenState();
  }
}

class _NewsHomeScreenState extends State<NewsHomeScreen> {
  Future<News> _fetchNews() async {
    var result = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey="));
    return News.fromJson(json.decode(result.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("News App Flutter"),
        ),
        body: FutureBuilder<News>(
          future: _fetchNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.totalResults,
                  itemBuilder: (context, index) {
                      Text(snapshot.data!.articles[index].title);
                  }
              );
            }
            else if (snapshot.hasError) {
              throw Exception(snapshot.stackTrace);
            }
            else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
