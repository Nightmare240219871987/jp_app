import 'package:flutter/material.dart';

class VioletButtonCustomized extends StatelessWidget {
  const VioletButtonCustomized({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          border: BoxBorder.all(color: Colors.white.withValues(alpha: 0.5)),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9375B6).withValues(alpha: 1),
              offset: Offset(0, 5),
              blurRadius: 12,
            ),
            BoxShadow(
              color: Color(0xFFFFACE4).withValues(alpha: 0.5),
              offset: Offset(0, 5),
              blurRadius: 12,
            ),
            BoxShadow(
              color: Color(0xFFEA71C5).withValues(alpha: 0.5),
              offset: Offset(0, 15),
              blurRadius: 115,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add to order for ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(Icons.currency_bitcoin, color: Colors.white, size: 16),
              Text(
                "8.99",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
