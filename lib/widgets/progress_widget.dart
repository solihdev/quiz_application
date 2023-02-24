import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  double currentWidth;

  ProgressWidget({Key? key, required this.currentWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 28,
              width: (MediaQuery.of(context).size.width * 0.8),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              height: 20,
              curve: Curves.easeInOutSine,
              width: currentWidth,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12)),
              duration: Duration(milliseconds: 500),
            ),
          ),
        ],
      ),
    );
  }
}