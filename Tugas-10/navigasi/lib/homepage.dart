import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigasi/slacing.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 86),
                width: double.infinity,
                height: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_news.png'),
                  ),
                ),
              ),
              const SizedBox(height: 37),
              Text(
                'Yuk, Membaca Bersama\nSanber News',
                style: GoogleFonts.arimo(
                  fontSize: 21, 
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 21),
              const Text(
                'Berita Terpercaya, Di Ujung Jari Anda',
                style: TextStyle(fontSize: 15),
              ),
              const Spacer(),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman SlacingPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }, 
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.arimo(
                      fontSize: 15, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3498DB), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 21),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Anda dapat menambahkan logika navigasi ke halaman daftar jika ada
                  }, 
                  child: Text(
                    'Mendaftar',
                    style: GoogleFonts.arimo(
                      fontSize: 15, 
                      fontWeight: FontWeight.bold, 
                      color: const Color(0xff3498DB),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff3498DB)),
                    backgroundColor: Colors.white, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),   
            ],
          ),
        ),
      ),
    );
  }
}
