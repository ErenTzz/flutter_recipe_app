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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                top: 100,
                left: 10,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/image 1.png"),
                  width: 225,
                  height: 225,
                ),
              ),
              Positioned(
                top: 10,
                left: 130,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/image 3.png"),
                  width: 325,
                  height: 325,
                ),
              ),
              Positioned(
                top: 240,
                left: 120,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/image 4.png"),
                  width: 225,
                  height: 225,
                ),
              ),
              Positioned(
                top: 440,
                left: 200,
                child: Transform(
                  transform:
                      Matrix4.rotationZ(3.1), // X ekseninde 180 derece döndürme
                  alignment: Alignment.center,
                  child: Image(
                    image:
                        AssetImage("assets/OnboardingImages/Rectangle 188.png"),
                    width: 125,
                    height: 125,
                  ),
                ),
              ),
              Positioned(
                top: 225,
                left: 335,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/Ellipse 7.png"),
                  width: 125,
                  height: 125,
                ),
              ),
              Positioned(
                top: 250,
                left: -25,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/Ellipse 2.png"),
                  width: 145,
                  height: 145,
                ),
              ),
              Positioned(
                top: 350,
                left: 300,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/Ellipse 6.png"),
                  width: 150,
                  height: 150,
                ),
              ),
              Positioned(
                top: 400,
                left: 25,
                child: Image(
                  image: AssetImage("assets/OnboardingImages/Ellipse 3.png"),
                  width: 160,
                  height: 160,
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 650),
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
                  style:
                      context.p1.copyWith(color: AppThemeColor.secondaryText),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  text: "Get Started",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                  width: 375, // Butonun genişliğini ayarla
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
