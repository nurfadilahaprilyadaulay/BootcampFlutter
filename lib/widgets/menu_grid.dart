import 'package:flutter/material.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'icon': Icons.people, 'label': 'Keanggotaan'},
      {'icon': Icons.book, 'label': 'Pedoman Pramuka'},
      {'icon': Icons.event, 'label': 'Kegiatan Pramuka'},
      {'icon': Icons.forum, 'label': 'Forum Diskusi'},
      {'icon': Icons.poll, 'label': 'Survei & Polling'},
      {'icon': Icons.download, 'label': 'Download Dokumen'},
      {'icon': Icons.phone, 'label': 'Kontak Penting'},
      {'icon': Icons.more_horiz, 'label': 'Lainnya'},
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.0, // Memberikan lebih banyak ruang vertikal
      ),

      padding: const EdgeInsets.all(16.0),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange[100],
              child: Icon(item['icon'] as IconData, color: Colors.orange),
            ),
            const SizedBox(height: 4),
            Text(
              item['label'] as String,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
