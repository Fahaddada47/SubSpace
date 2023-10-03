import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_assign/ui/HomeScreen.dart';

class BlogExplorer extends StatefulWidget {
  const BlogExplorer({super.key});

  @override
  State<BlogExplorer> createState() => _BlogExplorerState();
}

class _BlogExplorerState extends State<BlogExplorer> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: HomeScreen(),

      theme: ThemeData(
          primaryColor: const Color(0xFF07ADAE),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Color(0xFF07ADAE),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  textStyle: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            border:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            disabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          )),
     );
  }
}
