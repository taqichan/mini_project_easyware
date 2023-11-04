import 'package:flutter/material.dart';

class DetailNews extends StatelessWidget {
  final url;
  final title;
  final content;
  final author;
  final publisedAt;
  final urlToImage;

  DetailNews({
    this.url,
    this.title,
    this.content,
    this.author,
    this.publisedAt,
    this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Berita'),
      ),
      body: Column(
        children: [
          urlToImage != null
              ? Image.network(urlToImage)
              : Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: 250,
                  child: Text('image'),
                ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '$publisedAt',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  '$content',
                ),
                Divider(),
                Text(
                  'Author : $author',
                ),
                Text(
                  '$url',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
