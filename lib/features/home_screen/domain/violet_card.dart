import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VioletCard extends StatelessWidget {
  Image image;
  String title;
  String content;
  double price;
  int likeCount;

  VioletCard({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    required this.price,
    required this.likeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withValues(alpha: 0.1),
            Color(0xFF908CF5),
            Color(0xFF8C5BEA),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(24),
        border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: image),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              content,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.5),
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                spacing: 90,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.currency_bitcoin,
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        price.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white.withValues(alpha: 0.5),
                        size: 14,
                      ),
                      Text(
                        likeCount.toString(),
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                        ),
                      ),
                    ],
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
