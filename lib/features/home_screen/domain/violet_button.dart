import 'package:flutter/material.dart';

class VioletButton extends StatelessWidget {
  final String content;
  const VioletButton({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.5)),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9375B6).withValues(alpha: 1),
              offset: Offset(0, 5),
              blurRadius: 24,
            ),
            BoxShadow(
              color: Color(0xFFFFACE4).withValues(alpha: 0.5),
              offset: Offset(0, 5),
              blurRadius: 15,
            ),
            BoxShadow(
              color: Color(0xFFEA71C5).withValues(alpha: 0.5),
              offset: Offset(0, 15),
              blurRadius: 90,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8.0),
          child: Text(
            content,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
