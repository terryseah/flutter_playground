import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Post.dart';

Future<Post> fetchPost(int post) async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts/' + post.toString());

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }

}