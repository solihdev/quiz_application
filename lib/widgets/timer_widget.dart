import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  int second;

  TimerWidget({Key? key, required this.second}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.second.toString().length == 1
            ? "0" + widget.second.toString()
            : widget.second.toString(),
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}