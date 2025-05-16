class Post {
  final int id;
  final String title;
  final String excerpt;
  final String content;
  final String date;
  final String authorName;
  final String featuredImageUrl;

  Post({
    required this.id,
    required this.title,
    required this.excerpt,
    required this.content,
    required this.date,
    required this.authorName,
    required this.featuredImageUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json, String authorName, String featuredImageUrl) {
    return Post(
      id: json['id'],
      title: json['title']['rendered'] ?? '',
      excerpt: json['excerpt']['rendered'] ?? '',
      content: json['content']['rendered'] ?? '',
      date: json['date'] ?? '',
      authorName: authorName,
      featuredImageUrl: featuredImageUrl,
    );
  }
}
