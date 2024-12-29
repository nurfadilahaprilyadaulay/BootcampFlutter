import 'package:final_project/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text('Nur Fadilah Aprilya Daulay', style: TextStyle(fontSize: 24)),
            Text('nurfadilahaprilyadaulay@gmail.com'),
            Text('Hobi : Membaca, Menulis, Bermain Game'),
            SizedBox(height: 20), 
              ],
            ),
        ),
      bottomNavigationBar:  BottomNav(),
    );
  }
}
