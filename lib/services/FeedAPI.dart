import 'package:http/http.dart' as http;

class FeedService {
  String url = 'https://jsonplaceholder.typicode.com';

  getFeeds() async {
    Uri urlAPI = Uri.parse('$url/posts');
    final response = await http.get(urlAPI);
    print(response.body);
  }
}
