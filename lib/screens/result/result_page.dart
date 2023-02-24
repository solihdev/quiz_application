import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {
  Map<int, bool> userResult;

  ResultPage({super.key, required this.userResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const Center(
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: userResult.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Question ${index + 1}",
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  userResult[index]!
                      ? const Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.clear,
                          color: Colors.red,
                        )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 8,
              );
            },
          ),
        ],
      ),
    );
  }
}
