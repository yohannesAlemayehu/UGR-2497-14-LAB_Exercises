class Post {
  final int id;
  final String title;
  final String body;
  final bool selected; // Added to track if the post is selected

  Post({
    required this.id,
    required this.title,
    required this.body,
    this.selected = false, // Default to false
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json['id'],
    title: json['title'],
    body: json['body'],
  );
}
