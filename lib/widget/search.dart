import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_assign/model/blogs.dart';
import 'package:test_assign/ui/HomeScreen.dart';
import 'package:test_assign/ui/main_bottom_nav_screen.dart';

class BlogSearchDelegate extends SearchDelegate<Blog> {
  final List<Blog> blogs;

  BlogSearchDelegate({required this.blogs});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAll(MainBottomNavScreen());
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<Blog> results = blogs.where((blog) {
      return blog.title.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final blog = results[index];
        return ListTile(
          title: Text(blog.title),
          onTap: () {
            close(context, blog);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Blog> suggestions = blogs.where((blog) {
      return blog.title.toLowerCase().contains(query.toLowerCase());
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final blog = suggestions[index];
        return InkWell(
          child: ListTile(
            title: Text(blog.title),
            onTap: () {
              query = blog.title;
              showResults(context);
            },
          ),
        );
      },
    );
  }
}
