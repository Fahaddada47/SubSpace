import 'package:get/get.dart';
import 'package:test_assign/model/blogs.dart';
import 'package:test_assign/model/bookmark_class.dart';

class BookmarkController extends GetxController {

  BookmarkController();
  var isBookmarked = false.obs;
  var bookmarksList = <BookmarkItem>[].obs;

  void toggleBookmark(Blog blog) {
    isBookmarked.value = !isBookmarked.value;

    if (isBookmarked.value) {
      // Add the current item to the list of saved bookmarks
      bookmarksList.add(
        BookmarkItem(
          id: blog.id,
          imageUrl: blog.imageUrl,
          title: blog.title,
        ),
      );
    } else {
      // Remove the current item from the list of saved bookmarks
      bookmarksList.removeWhere((item) => item.id == blog.id);
    }
  }
}
