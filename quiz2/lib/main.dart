import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Image.asset(
                      'assets/menu.png',
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25), // Geser teks ke kanan
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1), // Pindahkan ikon search ke atas
              child: Image.asset(
                'assets/search.png',
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 10,),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset('assets/akun.png', width: 30, height: 30),
                    title: Text(
                      'Profile settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Settings regarding your profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset('assets/news.png', width: 30, height: 30),
                    title: Text(
                      'News settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Choose your favourite topics'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset('assets/notif.png', width: 30, height: 30),
                    title: Text(
                      'Notifications',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('When would you like to be notified'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset('assets/data.png', width: 30, height: 30),
                    title: Text(
                      'Subscriptions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Currently, you are in Starter Plan'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  SizedBox(height: 8),
                  Divider(),
                  SizedBox(height: 8),
                  Text(
                    'Other',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  ListTile(
                    leading: Image.asset('assets/bug.png', width: 30, height: 30),
                    title: Text(
                      'Bug report',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Report bugs very easy'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset('assets/shere.png', width: 30, height: 30),
                    title: Text(
                      'Share the app',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Share on social media networks'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
