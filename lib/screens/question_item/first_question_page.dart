import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_application/data/models/question_model.dart';
import 'package:quiz_application/screens/result/result_page.dart';
import 'package:quiz_application/widgets/answers_widget.dart';
import 'package:quiz_application/widgets/progress_widget.dart';
import 'package:quiz_application/widgets/question_widget.dart';
import 'package:quiz_application/widgets/timer_widget.dart';

class FirstQuestionPage extends StatefulWidget {
  const FirstQuestionPage({super.key});

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  int currentQuestionIndex = 0;
  int start = 15;
  String buttonText = "Next";

  Map<int, bool> userResult = {
    0: false,
    1: false,
    2: false,
    3: false,
    4: false,
  };

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start != 0) {
        setState(() {
          start--;
        });
      } else {
        nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 36),
                  child: const Text(
                    "Programming Test",
                    style: TextStyle(fontSize: 18),
                  )),
              const SizedBox(
                height: 50,
              ),
              ProgressWidget(
                currentWidth: (MediaQuery.of(context).size.width * 0.78) *
                    ((currentQuestionIndex + 1) /
                        QuestionModel.questions.length),
              ),
              const SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: TimerWidget(second: start),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TweenAnimationBuilder<double>(
                      builder: (BuildContext context, value, Widget? child) {
                        return CircularProgressIndicator(
                          strokeWidth: 6,
                          backgroundColor: Colors.transparent,
                          color: Colors.red,
                          value: value,
                        );
                      },
                      tween: Tween<double>(begin: 0.0, end: start / 15),
                      duration: const Duration(seconds: 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: QuestionWidget(
                    questionTitle:
                        QuestionModel.questions[currentQuestionIndex].question,
                    index: currentQuestionIndex + 1),
              ),
              const SizedBox(
                height: 16,
              ),
              AnswersWidget(
                questionModel: QuestionModel.questions[currentQuestionIndex],
                onAnswerSelected: (isTrue) {
                  userResult[currentQuestionIndex] = isTrue;
                },
              ),
              const SizedBox(
                height: 36,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: nextQuestion, child: Text(buttonText)))
            ],
          ),
        ),
      ),
    );
  }

  nextQuestion() {
    setState(() {
      if (buttonText == "Finish") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              userResult: userResult,
            ),
          ),
        );
      }
      if (currentQuestionIndex != QuestionModel.questions.length - 1) {
        start = 15;
        currentQuestionIndex++;
      }
      if (currentQuestionIndex == QuestionModel.questions.length - 1) {
        buttonText = "Finish";
      }
    });
  }
}
