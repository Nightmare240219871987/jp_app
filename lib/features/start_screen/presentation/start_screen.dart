import 'package:flutter/material.dart';
import 'package:jp_app/features/home_screen/presentation/home_screen.dart';
import 'package:jp_app/features/start_screen/domain/start_screen_card.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "lib/common/assets/hintergründe/bg_startscreen.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 105,
            left: -41,
            child: Image.asset(
              "lib/common/assets/grafiken/cupcake_chick.png",
              scale: 0.859,
            ),
          ),
          Positioned.fill(
            top: 380,
            child: Image.asset(
              "lib/common/assets/details/snack_snack.png",
              scale: 0.9,
            ),
          ),
          Positioned(
            right: 8,
            left: 8,
            top: 591,
            child: Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: StartScreenCard(
                onpressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
