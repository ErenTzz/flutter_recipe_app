import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_text_theme.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';
import 'package:recipe_app/app/core/theme/components/buttons/primary_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let’s join our community to cook better food!",
                style: context.p1.copyWith(color: AppThemeColor.secondaryText),
              ),
              const SizedBox(height: 20), // Metin ve buton arasına boşluk ekler
              Align(
                alignment:
                    Alignment(0.0, 0.82), // Y ekseninde orta aşağı hizalar
                child: PrimaryButton(
                  text: "Get Started",
                  onTap: () => debugPrint("Basildik"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
