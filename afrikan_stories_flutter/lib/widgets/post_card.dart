import 'package:flutter/material.dart';
import '../models/post.dart';
import 'package:flutter_html/flutter_html.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to Story View screen with post details
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (post.featuredImageUrl.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  post.featuredImageUrl,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'by ${post.authorName} • ${post.date}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(height: 8),
                  Html(
                    data: post.excerpt,
                    shrinkWrap: true,
                    style: {
                      "body": Style(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
