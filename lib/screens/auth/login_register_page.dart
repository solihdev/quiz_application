import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_application/screens/otp/otp_page.dart';
import 'package:quiz_application/utils/images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.black, fontSize: 27),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  width: double.infinity,
                  child: SvgPicture.asset(
                    MyImages.phone_icon,
                    width: 260,
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 50,
                  child: SvgPicture.asset(
                    MyImages.quiz_label,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                obscureText: false,
                decoration: const InputDecoration(
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
              height: 25,
            ),
            Container(
              width: 230,
              height: 60,
              decoration: BoxDecoration(
                  color: const Color(0xFFFCA82F),
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                  onTap: () {
                    saveLogin(context);
                  },
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                "        term's and conditions apply\nPOWERED BY - sparrowdevops.com",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ]),
        ));
  }

  void saveLogin(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLoggedIn", true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OtpPage(),
      ),
    );
  }
}
