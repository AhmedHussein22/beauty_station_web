import 'package:beauty_solution_web/resource/assets_manager.dart';
import 'package:flutter/material.dart';

class VerifyBeforeScreen extends StatelessWidget {
  const VerifyBeforeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.welcomeBg1),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
