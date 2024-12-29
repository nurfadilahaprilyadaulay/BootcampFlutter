import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_project/screens/home_page.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Fungsi untuk login
  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Autentikasi Firebase
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        if (userCredential.user != null) {
          // Login berhasil, arahkan ke HomeScreen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      } on FirebaseAuthException catch (e) {
        String message;
        if (e.code == 'user-not-found') {
          message = 'Pengguna tidak ditemukan.';
        } else if (e.code == 'wrong-password') {
          message = 'Password salah.';
        } else {
          message = 'Terjadi kesalahan. Silakan coba lagi.';
        }
        // Tampilkan pesan error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 26),
                Center(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 52,
                    height: 52,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 26),
                const Text(
                  'Selamat datang\nKembali',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3D3E3B),
                  ),
                ),
                const SizedBox(height: 57),
                CustomTextField(
                  label: 'Email',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Masukkan email yang valid';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                CustomTextField(
                  label: 'Password',
                  controller: _passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password tidak boleh kosong';
                    }
                    if (value.length < 6) {
                      return 'Password harus terdiri dari minimal 6 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF7D8797),
                        ),
                        children: [
                          TextSpan(text: 'Belum punya akun? '),
                          TextSpan(
                            text: 'Daftar',
                            style: TextStyle(
                              color: Color(0xFFFF7A3F),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Lupa Password?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFFF7A3F),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: CustomButton(
                    text: 'Masuk',
                    onPressed: _handleLogin,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
