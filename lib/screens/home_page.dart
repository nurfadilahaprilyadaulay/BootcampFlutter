import 'package:final_project/widgets/bottom_nav.dart';
import 'package:final_project/widgets/home_header.dart';
import 'package:final_project/widgets/menu_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Agar teks rata kiri
          children: [
            const HomeHeader(), // Header bagian atas
            const Expanded(child: MenuGrid()), // Menu grid
            const SizedBox(height: 20), // Jarak setelah grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Berita',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10), // Jarak antara judul dan konten berita
                  ListView.builder(
                    shrinkWrap: true, // Agar tidak mengambil semua tinggi layar
                    physics: const NeverScrollableScrollPhysics(), // Non-scroll untuk bagian ini
                    itemCount: 2, // Jumlah berita
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/footer_image.png', // Gambar berita
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10), // Jarak antara gambar dan teks
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Kwarcab Kabupaten Bogor Minta Anggota Pramuka...',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '12 April 2021',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Jarak sebelum bottom navigation
          ],
        ),
      ),
      bottomNavigationBar:  BottomNav(),
    );
  }
}
