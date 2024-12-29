import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, top: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Home',
            style: TextStyle(
              color: Color(0xFF3D3E3B),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Hello, nurfadilahaprilyadaulay@gmail.com',
            style: TextStyle(
              color: Color(0xFF3D3E3B),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}