import 'package:flutter/material.dart';
import 'package:quiz_application/screens/auth/login_register_page.dart';
import 'package:quiz_application/screens/menu/menu_page.dart';
import 'package:quiz_application/utils/images.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLog = false;

  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    isLog = pref.getBool("isLoggedIn") ?? false;
    return pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();
    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return isLog ? const MenuPage() : const LoginRegisterPage();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF4047C1),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.background_image),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(0xFFFFFEFC),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
