import 'package:flutter/material.dart';
import 'package:jp_app/features/drawer_screen/domain/glassy_card.dart';
import 'package:jp_app/features/drawer_screen/domain/violet_button_customized.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -140,
          left: 8,
          child: Center(
            child: Image.asset(
              "lib/common/assets/grafiken/cupkake_cat.png",
              scale: 1.3,
            ),
          ),
        ),

        Positioned(
          top: 8,
          right: 16,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.grey.shade400,
            icon: Icon(
              Icons.close,
              color: Colors.white.withValues(alpha: 0.6),
              size: 18,
            ),
          ),
        ),
        Positioned(top: 166, left: 32, right: 32, child: GlassyCard()),
        Positioned(
          top: 635,
          left: 32,
          right: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withValues(alpha: 0.2),
                ),
                child: Row(
                  spacing: 4,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Text(
                        "Small",
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Text(
                        "Medium",
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.35),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          "Large",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 700,
          left: 32,
          right: 32,
          child: VioletButtonCustomized(),
        ),
      ],
    );
  }
}
