import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_page/search_page.dart';
import 'package:test_assign/model/blogs.dart';
import 'package:test_assign/services/network_caller.dart';
import 'package:test_assign/ui/bookmarks_list.dart';
import 'package:test_assign/ui/message_screen.dart';
import 'package:test_assign/widget/blog_list.dart';
import 'package:test_assign/widget/search.dart';

class HomeScreen extends StatelessWidget {
  final BlogApi blogApi = BlogApi();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('SubSpace'),
            IconButton(
              onPressed: () async {
                // Fetch the list of blogs
                final List<Blog> blogs = await blogApi.fetchBlogs();

                // Show the search page with the fetched list using the custom delegate
                final selectedBlog = await showSearch<Blog>(
                  context: context,
                  delegate: BlogSearchDelegate(blogs: blogs),
                );

                // Handle the selected blog if needed
                if (selectedBlog != null) {
                  // Handle the selected blog
                }
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Fahad Islam'),
              accountEmail: Text('fifahad007@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mine.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Bookmarks'),
              onTap: () {
                Get.to(BookmarkPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Blog>>(
              future: blogApi.fetchBlogs(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  return BlogListWidget(blogs: snapshot.data ?? []);
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const ContactScreen());
        },
        child: const Icon(Icons.messenger_outline_outlined),
      ),
    );
  }
}
