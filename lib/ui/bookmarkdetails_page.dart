import 'package:flutter/material.dart';
import 'package:test_assign/model/bookmark_class.dart';

class BookmarksDetailsPage extends StatelessWidget {
  final BookmarkItem bookmark;

  BookmarksDetailsPage({required this.bookmark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(bookmark.imageUrl),
            SizedBox(
              height: 4,
              child: Container(
                color: Colors.white30,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                bookmark.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            // Add more details here as needed
          ],
        ),
      ),
    );
  }
}
