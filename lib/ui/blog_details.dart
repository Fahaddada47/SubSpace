import 'package:flutter/material.dart';
import 'package:test_assign/model/blogs.dart';

class BlogDetailsPage extends StatelessWidget {
  final Blog blog;

  BlogDetailsPage({required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Blog Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(blog.imageUrl),
            SizedBox(
              height: 4,
              child: Container(
                color: Colors.white30,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  blog.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            // Add more details here as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.bookmark),
      ),
    );
  }
}
