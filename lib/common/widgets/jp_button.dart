import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JPButton extends StatelessWidget {
  void Function() onPressed;
  final String content;
  JPButton({super.key, required this.onPressed, required this.content});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: BoxBorder.all(
            color: Colors.white.withValues(alpha: 0.5),
            width: 0.5,
          ),
          gradient: LinearGradient(
            colors: [Color(0xffe970c4), Color(0xfff69ea3)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9375b6),
              offset: Offset(0, 3),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFFFACE4),
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
            BoxShadow(
              color: Color(0xFFEA71c5).withValues(alpha: 0.5),
              offset: Offset(0, 20),
              blurRadius: 55,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 64, vertical: 12),
          child: Text(
            content,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
