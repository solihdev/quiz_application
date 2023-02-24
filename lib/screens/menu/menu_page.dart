import 'package:flutter/material.dart';
import 'package:quiz_application/screens/auth/login_register_page.dart';
import 'package:quiz_application/screens/question_item/first_question_page.dart';
import 'package:quiz_application/screens/question_item/last_question_page.dart';
import 'package:quiz_application/screens/question_item/second_question_page.dart';
import 'package:quiz_application/utils/colors.dart';
import 'package:quiz_application/utils/images.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      "Chiqish!",
                      style: TextStyle(fontSize: 25),
                    ),
                    content: const Text(
                      "Rostan ham chiqishni xoxlaysizmi?",
                      style: TextStyle(fontSize: 16),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          saveLogin(context);
                        },
                        child: const Text("ok"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("no"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                child: Image.asset(
              MyImages.play_image,
              width: 200,
            )),
            SizedBox(
              height: 598,
              child: ListView(
                shrinkWrap: true,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const FirstQuestionPage(),
                        ),
                      );
                    },
                    child: testButton(
                      MyColors.C_EC8772,
                      MyColors.C_EE709C,
                      "Matematika",
                      "1h:20m",
                      "500",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SecondQuestionPage()));
                    },
                    child: testButton(MyColors.C_4E79EE, MyColors.C_12B0FB,
                        "Qiziqarli", "2h:30m", "300"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LastQuestionPage(),
                        ),
                      );
                    },
                    child: testButton(
                      MyColors.C_A58ED1,
                      MyColors.C_EFBBE8,
                      "Informatika",
                      "1h:10m",
                      "1000",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: testButton(MyColors.C_7EABFE, MyColors.C_8CCFD3,
                        "Biologiya", "3h:30m", "800"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: testButton(MyColors.C_EC8772, MyColors.C_EE709C,
                        "Ona tili", "4h:30m", "800"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  void saveLogin(context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isLoggedIn", false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginRegisterPage(),
      ),
    );
  }
}

Widget testButton(
    Color color1, Color color2, String text, String hours, String dollor) {
  return Stack(children: [
    Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ]),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    Positioned(
        left: 28,
        top: 50,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )),
    Positioned(
        left: 150,
        top: 50,
        child: Text(
          hours,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )),
    Positioned(
        left: 300,
        top: 50,
        child: Text(
          "\$$dollor",
          style: const TextStyle(color: Colors.white, fontSize: 24),
        )),
    Positioned(
        top: 105,
        left: 230,
        child: Text(
          "entry people - 200 seats",
          style: TextStyle(color: Colors.black.withOpacity(0.5)),
        ))
  ]);
}
