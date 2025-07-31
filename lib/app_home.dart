import 'package:flutter/material.dart';
import 'package:jp_app/features/start_screen/presentation/start_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JP App",
      home: StartScreen(),
    );
  }
}
