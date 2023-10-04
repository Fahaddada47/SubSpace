import 'package:flutter/material.dart';
import 'package:test_assign/ui/HomeScreen.dart';
import 'package:test_assign/ui/bookmarks_list.dart';
import 'package:test_assign/ui/category_list.dart';
import 'package:test_assign/ui/setting.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    const CategoryListScreen(),
     BookmarkPage(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _selectedIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
        // selectedItemColor: Colors.amber,
        // unselectedItemColor: Colors.grey,
        // showSelectedLabels: true,

        elevation: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmarks'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
