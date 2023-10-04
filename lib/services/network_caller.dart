import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test_assign/model/blogs.dart';

class BlogApi {
  Future<List<Blog>> fetchBlogs() async {
    final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
    final String adminSecret =
        '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

    try {
      final response = await http.get(Uri.parse(url), headers: {
        'x-hasura-admin-secret': adminSecret,
      });

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body)['blogs'];
        return data.map((json) => Blog.fromJson(json)).toList();
      } else {
        throw Exception(
            'Request failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
