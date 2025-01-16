import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_text_theme.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';
import 'package:recipe_app/app/core/theme/components/buttons/primary_button.dart';
import 'package:recipe_app/sign_in.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // Scaffold'u buraya taşıdık
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage("assets/images/Onboarding.png"),
              width: 600,
              height: 600,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            "Start Cooking",
            style: context.h1.copyWith(
              color: AppThemeColor.mainText,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Let’s join our community to cook better food!",
            style: context.p1.copyWith(color: AppThemeColor.secondaryText),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          PrimaryButton(
            text: "Get Started",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SignInPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
