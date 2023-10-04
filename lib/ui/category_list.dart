import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_assign/ui/HomeScreen.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Categories',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.offAll(HomeScreen());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              return FittedBox(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(12),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.newspaper_rounded,
                        size: 100,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'News',
                      style: TextStyle(fontSize: 27, letterSpacing: 0.4,
                      fontWeight: FontWeight.w500,
                        color: Colors.brown
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
