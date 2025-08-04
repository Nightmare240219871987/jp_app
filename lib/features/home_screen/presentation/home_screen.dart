import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/features/drawer_screen/presentation/my_bottom_sheet.dart';
import 'package:jp_app/features/home_screen/domain/glassy_button.dart';
import 'package:jp_app/common/widgets/violet_button.dart';
import 'package:jp_app/features/home_screen/domain/violet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            top: 235,
            left: 16,
            right: 16,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(32),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Image.asset(
                  "lib/common/assets/details/cut_card.png",
                  color: Colors.grey.withValues(alpha: 0.4),
                  colorBlendMode: BlendMode.modulate,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 251,
            child: Text(
              "Angi´s Yummy Burger",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 280,
            left: 32,
            child: SizedBox(
              width: 130,
              child: Text(
                "Delish vegan burger that tastes like heaven",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 325,
            child: Row(
              children: [
                Icon(Icons.star, color: Color(0xFFEA71C5), size: 18),
                Text("4.8", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Positioned(
            top: 275,
            left: 150,
            child: Image.asset(
              "lib/common/assets/grafiken/burger.png",
              scale: 1.8,
            ),
          ),
          Positioned(
            left: 32,
            top: 325,
            child: Row(
              children: [
                Icon(Icons.currency_bitcoin, color: Colors.white, size: 16),
                Text(
                  "13.99",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 420,
            left: 32,
            child: VioletButton(content: "Add to order"),
          ),
          Positioned(
            left: 16,
            top: 560,
            child: Text(
              "We Recommended",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 16,
            top: 600,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 27,
                children: [
                  VioletCard(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        clipBehavior: Clip.none,
                        backgroundColor: Colors.black,
                        context: context,
                        builder: (context) => FractionallySizedBox(
                          heightFactor: 0.8785,
                          child: MyBottomSheet(),
                        ),
                      );
                    },
                    image: Image.asset(
                      "lib/common/assets/grafiken/cupkake_cat.png",
                      scale: 4,
                    ),
                    title: "Mogli´s Cup",
                    content: "Strawberry ice cream",
                    price: 8.99,
                    likeCount: 200,
                  ),
                  VioletCard(
                    onPressed: () {},
                    image: Image.asset(
                      "lib/common/assets/grafiken/icecream.png",
                      scale: 4,
                    ),
                    title: "Balu´s Cup",
                    content: "Pistachio ice cream",
                    price: 8.99,
                    likeCount: 199,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
