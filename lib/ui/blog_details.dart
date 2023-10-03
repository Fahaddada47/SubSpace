import 'package:flutter/material.dart';
import 'package:test_assign/model/blogs.dart';

class BlogDetailsPage extends StatelessWidget {
  final Blog blog;

  BlogDetailsPage({required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(blog.imageUrl),
          SizedBox(height: 16),
          Text(blog.title),
          // Add more details here as needed
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.bookmark) ,),
    );
  }
}
