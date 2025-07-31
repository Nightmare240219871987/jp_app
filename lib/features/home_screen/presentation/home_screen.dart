import 'package:flutter/material.dart';
import 'package:jp_app/features/home_screen/domain/glassy_button.dart';
//import 'package:jp_app/features/home_screen/domain/glassy_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/common/assets/hintergründe/bg_mainscreen.png",
              fit: BoxFit.fill,
            ),
          ),

          Positioned(
            left: 16,
            top: 82,
            child: SizedBox(
              width: 260,
              child: Text(
                "Choose Your Favorite Snack",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 16,
            top: 165,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 14,
                children: [
                  GlassyButton(
                    isActive: false,
                    onPressed: () {},
                    content: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white.withValues(alpha: 0.5),
                          size: 14,
                        ),
                        Text(
                          "All categorie",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white.withValues(alpha: 0.5),
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                  GlassyButton(
                    onPressed: () {},
                    content: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "Salty",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isActive: true,
                  ),
                  GlassyButton(
                    onPressed: () {},
                    content: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "Sweet",
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.5),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    isActive: false,
                  ),
                  GlassyButton(
                    onPressed: () {},
                    content: Row(
                      children: [
                        Text(
                          "Drink",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    isActive: false,
                  ),
                  GlassyButton(
                    onPressed: () {},
                    content: Row(
                      children: [
                        Text(
                          "Extras",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    isActive: false,
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 30,
            right: 20,
            top: 240,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  //left: 5,
                  child: Image.asset("lib/common/assets/details/cut_card.png"),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    "Angi´s Yummy Burger",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
