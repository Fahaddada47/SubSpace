import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_assign/model/bookmark_controller.dart';
import 'package:test_assign/ui/bookmarkdetails_page.dart'; // Import the bookmark controller.

class BookmarkPage extends StatelessWidget {
  final BookmarkController bookmarkController =
      Get.find(); // Access the bookmark controller.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmarks'),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: bookmarkController.bookmarksList.length,
          itemBuilder: (context, index) {
            final bookmark = bookmarkController.bookmarksList[index];
            return GestureDetector(
              onTap: () {
                // Navigate to the item details page with the selected bookmark
                Get.to(BookmarksDetailsPage(bookmark: bookmark));
              },
              child: ListTile(
                leading: Image.network(bookmark.imageUrl),
                title: Text(bookmark.title),
              ),
            );
          },
        ),
      ),
    );
  }
}