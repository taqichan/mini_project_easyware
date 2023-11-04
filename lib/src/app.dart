import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/features/berita/screen/home_news.dart';
import 'package:mini_project_easyware/src/features/chatbot/screen/chatbot_screen.dart';
import 'package:mini_project_easyware/src/features/home/screen/detail_monitor_screen.dart';
import 'package:mini_project_easyware/src/features/home/screen/detail_mouse_screen.dart';
import 'package:mini_project_easyware/src/features/home/screen/detail_keyboard_screen.dart';
import 'package:mini_project_easyware/src/features/home/screen/home_screen.dart';
import 'package:mini_project_easyware/src/features/login/screen/login_screen.dart';
import 'package:mini_project_easyware/src/features/splash/screen/splash_screen.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/home_news': (context) => const HomeNews(),
        '/chatbot_screen': (context) => const ChatbotScreen(),
        '/detail_mouse': (context) => const DetailMouseScreen(),
        '/detail_keyboard': (context) => const DetailKeyboardScreen(),
        '/detail_monitor': (context) => const DetailMonitorScreen(),
      },
    );
  }
}
