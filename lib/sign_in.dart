import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_text_theme.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';
import 'package:recipe_app/app/core/theme/components/buttons/primary_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        backgroundColor: AppThemeColor.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: context.h1.copyWith(
                color: AppThemeColor.mainText,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              text: "Sign In",
              onTap: () {
                // Giriş doğrulama ve yönlendirme burada yapılabilir
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Signed In Successfully!")),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Geri gitme
              },
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
