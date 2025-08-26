import 'package:flutter/material.dart';
import 'package:new_app/models/articleModel.dart';
import 'package:new_app/views/webView.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.article});
  final Articlemodel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 30),

      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Webview(url: article.url);
              },
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),

              child: Image.network(
                article.image ??
                    'https://derivates.kicker.de/image/fetch/f_webp/w_300%2Ch_352%2Cc_fill%2Cg_auto%2Cq_auto:best/https://mediadb.kicker.de/2024/fussball/spieler/xl/141102_505_20230822870.jpg',
                height: 180,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              article.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              article.subtitle ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
