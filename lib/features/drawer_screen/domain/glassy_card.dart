import 'dart:ui';

import 'package:flutter/material.dart';

class GlassyCard extends StatelessWidget {
  const GlassyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.3)),
            color: Colors.white.withValues(alpha: 0.05),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 3,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 14,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    Text(
                      "200",
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Mogli´s Cup",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ",
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_bitcoin, color: Colors.white, size: 18),
                    Text(
                      "8.99",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42.0),
                child: Divider(color: Colors.white.withValues(alpha: 0.5)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 42.0,
                  right: 42,
                  top: 16,
                  bottom: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ingredients",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                        ),
                        Row(
                          spacing: 2,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                        ),
                        Row(
                          spacing: 1,
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                            Icon(
                              Icons.star_border,
                              size: 14,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
