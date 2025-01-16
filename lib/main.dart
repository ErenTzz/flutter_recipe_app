import 'package:flutter/material.dart';
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
          child: PrimaryButton(
            text: "Buna Bas",
            onTap: () => debugPrint("Basildik"),
          ),
        ),
      ),
    );
  }
}
