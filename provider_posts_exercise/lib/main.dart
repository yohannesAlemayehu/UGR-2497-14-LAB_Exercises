import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'post_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Posts App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postsNotifier = Provider.of<PostsNotifier>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      postsNotifier.fetchPosts();
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Posts tap to see body'),
      ),
      body: Consumer<PostsNotifier>(
        builder: (context, postsNotifier, child) {
          if (postsNotifier.posts.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: postsNotifier.posts.length,
              itemBuilder: (context, index) {
                final post = postsNotifier.posts[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  title: Text(post.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailScreen(post: post),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}

class PostDetailScreen extends StatelessWidget {
  final Post post;

  const PostDetailScreen({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Text(post.body)),
      ),
    );
  }
}

class PostsNotifier extends ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      _posts = data.map((json) => Post.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Error fetching posts: ${response.statusCode}');
    }
  }
}
