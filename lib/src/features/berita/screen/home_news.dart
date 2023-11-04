import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mini_project_easyware/src/features/berita/screen/detail_news.dart';

class HomeNews extends StatefulWidget {
  static const String routeName = '/home_news';
  const HomeNews({super.key});

  @override
  State<HomeNews> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeNews> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  List _posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: ListView.builder(
            itemCount: _posts.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailNews(
                                  url: _posts[index]['url'],
                                  title: _posts[index]['title'],
                                  content: _posts[index]['content'],
                                  publisedAt: _posts[index]['publishedAt'],
                                  author: _posts[index]['author'],
                                  urlToImage: _posts[index]['urlToImage'],
                                );
                              },
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.blue,
                            width: 120,
                            height: 90,
                            child: _posts[index]['urlToImage'] != null
                                ? Image.network(
                                    _posts[index]['urlToImage'],
                                    fit: BoxFit.cover,
                                  )
                                : const Center(
                                    child: Text('No Image'),
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _posts[index]['title'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              _posts[index]['description'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              );
            }),
      ),
    );
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/everything?q=hardware&from=2023-10-28&to=2023-10-28&sortBy=popularity&apiKey=6c32c1a60a694983ac865934b23c58a6'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _posts = data['articles'];
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
  }
}
