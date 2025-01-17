import 'package:flutter/material.dart';
import 'package:recipe_app/app/core/theme/app_text_theme.dart';
import 'package:recipe_app/app/core/theme/app_theme_color.dart';
import 'package:recipe_app/app/core/theme/components/buttons/primary_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 125,
            ),
            Text(
              "Welcome Back!",
              style: context.h1.copyWith(
                color: AppThemeColor.mainText,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Please enter your account here",
              style: context.p2.copyWith(color: AppThemeColor.secondaryText),
            ),
            const SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email or phone number",
                  labelStyle: context.p2.copyWith(
                    color: AppThemeColor.secondaryText,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.mail_outline_rounded,
                    color: AppThemeColor.mainText,
                  )),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: context.p2.copyWith(
                    color: AppThemeColor.secondaryText,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: AppThemeColor.mainText,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppThemeColor.secondaryText,
                  )),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment(1.05, 1),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Geri gitme
                },
                style: TextButton.styleFrom(
                    foregroundColor: AppThemeColor.mainText,
                    textStyle: context.p2),
                child: const Text("Forgot password?"),
              ),
            ),
            const SizedBox(height: 75),
            PrimaryButton(
              text: "Login",
              onTap: () {
                // Giriş doğrulama ve yönlendirme burada yapılabilir
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Signed In Successfully!")),
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              "Or continue with",
              style: context.p2.copyWith(color: AppThemeColor.secondaryText),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              text: "Google",
              color: Colors.red, // Buton rengini kırmızı yap
              onTap: () {
                // Giriş doğrulama ve yönlendirme burada yapılabilir
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text("Signed In Successfully with Google!")),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Geri gitme
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppThemeColor.mainText,
                    textStyle: context.p2,
                  ),
                  child: const Text("Don't have any account?"),
                ),
                TextButton(
                  onPressed: () {
                    // Sign Up sayfasına yönlendirme burada yapılabilir
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green, // Yazı rengi yeşil
                    textStyle: context.p2.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text("Sign Up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
