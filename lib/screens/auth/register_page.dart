import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_application/screens/menu/menu_page.dart';
import 'package:quiz_application/utils/images.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Register",
          style: TextStyle(color: Colors.black, fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: double.infinity,
                child: Center(
                  child: SvgPicture.asset(
                    MyImages.quiz_label,
                    width: 140,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            const SizedBox(
              width: 320,
              height: 60,
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFCA82F))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Enter your mobile number",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 320,
              height: 60,
              child: TextField(
                keyboardType: TextInputType.phone,
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFCA82F))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Password",
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 320,
              height: 60,
              child: TextField(
                style: TextStyle(),
                keyboardType: TextInputType.phone,
                obscureText: false,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Confirm Password",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFCA82F))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 210,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xFFFCA82F),
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MenuPage()),
                    );
                  },
                  child: const Center(
                      child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
            ),
            const SizedBox(
              height: 34,
            ),
            const Text(
              "if you have already account click here",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
