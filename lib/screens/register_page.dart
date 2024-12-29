import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Fungsi untuk menangani registrasi
  Future<void> _handleRegister() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Mendaftarkan pengguna di Firebase Authentication
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Setelah berhasil mendaftar, perbarui display name (opsional)
        await userCredential.user?.updateDisplayName(_usernameController.text.trim());

        // Navigasi ke halaman login atau beranda
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pendaftaran berhasil, silakan masuk!')),
        );

        Navigator.pushReplacementNamed(context, '/login');
      } on FirebaseAuthException catch (e) {
        String errorMessage = 'Terjadi kesalahan';
        if (e.code == 'email-already-in-use') {
          errorMessage = 'Email sudah terdaftar';
        } else if (e.code == 'weak-password') {
          errorMessage = 'Password terlalu lemah';
        } else if (e.code == 'invalid-email') {
          errorMessage = 'Format email tidak valid';
        }

        // Tampilkan pesan kesalahan
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Terjadi kesalahan: ${e.toString()}')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 22),
                Center(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 52,
                    height: 52,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 31),
                Text(
                  'Selamat datang\nSilahkan Mendaftar',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF3D3E3B),
                  ),
                ),
                const SizedBox(height: 57),
                _buildTextField(
                  controller: _usernameController,
                  label: 'Username',
                ),
                const SizedBox(height: 18),
                _buildTextField(
                  controller: _emailController,
                  label: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 28),
                _buildTextField(
                  controller: _passwordController,
                  label: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                _buildFooter(),
                const SizedBox(height: 47),
                _buildRegisterButton(),
                const SizedBox(height: 43),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool isPassword = false,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            color: const Color(0xFF7D8797),
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFE9E9E9),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFFE9E9E9),
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$label tidak boleh kosong';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, '/login'),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color(0xFF7D8797),
              ),
              children: const [
                TextSpan(text: 'Sudah punya akun? '),
                TextSpan(
                  text: 'Masuk',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFFFF7A3F),
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          'Lupa Password?',
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: const Color(0xFFFF7A3F),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterButton() {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: _handleRegister,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF1A3665),
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          'Daftar',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
