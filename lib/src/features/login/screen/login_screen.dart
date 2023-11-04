import 'package:flutter/material.dart';
import 'package:mini_project_easyware/src/widget/custom_button.dart';
import 'package:mini_project_easyware/src/widget/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final kelasController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    kelasController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return 'Please fill all the fields';
    }
    if (!emailController.text.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/banner_loginn.png',
              width: double.infinity,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              labelName: 'Complete Name',
              hintText: 'Write your name',
              controller: nameController,
            ),
            CustomTextField(
              labelName: 'Email',
              hintText: 'Write your mail address',
              controller: emailController,
            ),
            CustomTextField(
              labelName: 'Password',
              hintText: 'Write your security',
              controller: passwordController,
              obscureText: true,
            ),
            CustomBottomWidget(
              height: 50,
              width: 150,
              title: 'Login',
              onTap: () {
                final messege = validationInput();
                if (messege != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(messege),
                    ),
                  );
                  return;
                }
                Navigator.pushNamed(
                  context,
                  '/home_screen',
                );
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
