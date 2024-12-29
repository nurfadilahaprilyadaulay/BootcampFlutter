import 'package:final_project/screens/auth_button.dart';
import 'package:final_project/screens/login_page.dart';
import 'package:final_project/screens/register_page.dart';
import 'package:flutter/material.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Authentication Screen',
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(24, 173, 24, 63),
        constraints: const BoxConstraints(maxWidth: 360),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Semantics(
              label: 'App Logo',
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 143,
                fit: BoxFit.contain,
                semanticLabel: 'Application Logo',
              ),
            ),
            const SizedBox(height: 89),
            AuthButton(
              label: 'Daftar',
              backgroundColor: const Color(0xFF1F99CC),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            Semantics(
              label: 'Or divider text',
              child: Text(
                'Atau',
                style: TextStyle(
                  color: const Color(0xFF1A3665),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 29),
            AuthButton(
              label: 'Masuk',
              backgroundColor: const Color(0xFF1A3665),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}