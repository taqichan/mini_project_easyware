import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/widget/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Easyware',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Easyware adalah sebuah perangkat lunak yang didesain khusus untuk memberikan pengalaman pembelajaran yang intuitif dan sederhana dalam memperkenalkan konsep dan penggunaan perangkat keras (hardware) komputer kepada pengguna.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomBottomWidget(
              title: 'Get Started',
              onTap: () {
                Navigator.pushNamed(context, '/login_screen');
              },
              height: 50,
              width: 150,
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splashh.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
