import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/common/widgets/jp_button.dart';

class StartScreenCard extends StatelessWidget {
  final void Function() onpressed;
  const StartScreenCard({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white.withValues(alpha: 0.01),
            border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 16.0,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Feeling Snackish Today?",
                    style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: Text(
                      "Explore Angi´s most popular snack selection and get instantly happy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFEBEBF5).withValues(alpha: 0.6),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8,
                  ),
                  child: JPButton(onPressed: onpressed, content: "Order Now"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
