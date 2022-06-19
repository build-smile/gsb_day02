import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/Feed.dart';

class FeedService {
  String url = 'https://jsonplaceholder.typicode.com';

  Future<List<Feed>> getFeeds() async {
    Uri urlAPI = Uri.parse('$url/posts');
    final response = await http.get(urlAPI);
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      List<Feed> data = result.map((e) => Feed.fromJson(e)).toList();
      return data;
    }
    return [];
  }
}
