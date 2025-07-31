import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GlassyButton extends StatelessWidget {
  void Function() onPressed;
  bool isActive;
  Widget content;
  GlassyButton({
    super.key,
    required this.onPressed,
    required this.content,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(32),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: isActive
                  ? Colors.white.withValues(alpha: 0.7)
                  : Colors.white.withValues(alpha: 0.09),
              borderRadius: BorderRadius.circular(48),
              border: BoxBorder.all(
                color: Colors.white.withValues(alpha: 0.5),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 8.0,
              ),
              child: content,
            ),
          ),
        ),
      ),
    );
  }
}
