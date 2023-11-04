import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/features/home/widget/header_widget.dart';
import 'package:mini_project_easyware/src/features/home/widget/main_banner_widget.dart';
import 'package:mini_project_easyware/src/features/home/widget/navigator_banner_widget.dart';
import 'package:mini_project_easyware/src/features/home/widget/berita_widget.dart';
// import 'package:qrscan/qrscan.dart' as scanner;

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Header(),
          SizedBox(height: 25),
          Navigator_Banner(),
          SizedBox(height: 25),
          MainBanner(),
          SizedBox(height: 25),
          Berita(),
          SizedBox(height: 25),
          Center(
            child: Image.asset(
              'assets/images/qris.png',
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
