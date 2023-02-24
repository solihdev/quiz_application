import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_application/screens/auth/register_page.dart';
import 'package:quiz_application/utils/images.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Otp",
          style: TextStyle(color: Colors.black, fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                width: double.infinity,
                child: Center(
                    child: SvgPicture.asset(
                  MyImages.quiz_label,
                  width: 140,
                )),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Enter your 6 digit otp here",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset(MyImages.nuqtacha_icon),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 230,
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFFCA82F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RegisterPage(),
                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "login with social media",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 70),
              child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Image.asset(MyImages.nature_image),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
