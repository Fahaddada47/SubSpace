import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test_assign/model/blogs.dart';
import 'package:test_assign/ui/blog_details.dart';

class BlogListWidget extends StatelessWidget {
  final List<Blog> blogs;

  const BlogListWidget({super.key, required this.blogs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blogs.length,
      itemBuilder: (context, index) {
        final blog = blogs[index];
        return InkWell(
          onTap: () {
            Get.to(BlogDetailsPage(blog: blog));
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black45, width: 2),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2), // Shadow offset
                ),
              ],
            ),
            child: ListTile(
              // leading: Image.network(blog.imageUrl),
              title: Column(
                children: [
                  Image.network(blog.imageUrl),
                  Text('Title: ${blog.title}',style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
