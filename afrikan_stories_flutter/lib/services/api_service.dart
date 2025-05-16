import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  static const String baseUrl = 'https://afrika.ng/wp-json/wp/v2';

  Future<List<Post>> fetchPosts({int page = 1, int perPage = 10}) async {
    final postsResponse = await http.get(Uri.parse('\$baseUrl/posts?page=\$page&per_page=\$perPage&_embed'));
    if (postsResponse.statusCode == 200) {
      final List<dynamic> postsJson = json.decode(postsResponse.body);
      List<Post> posts = [];

      for (var postJson in postsJson) {
        // Extract author name
        String authorName = '';
        if (postJson['_embedded'] != null && postJson['_embedded']['author'] != null) {
          authorName = postJson['_embedded']['author'][0]['name'] ?? '';
        }

        // Extract featured image URL
        String featuredImageUrl = '';
        if (postJson['_embedded'] != null && postJson['_embedded']['wp:featuredmedia'] != null) {
          featuredImageUrl = postJson['_embedded']['wp:featuredmedia'][0]['source_url'] ?? '';
        }

        posts.add(Post.fromJson(postJson, authorName, featuredImageUrl));
      }
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }

  // TODO: Add methods to fetch categories, authors, tags
}
