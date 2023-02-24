import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

typedef VoidCallback = void Function();

class OptionWidget extends StatefulWidget {
  
  final String option;
  bool isSelected;
  VoidCallback onTap;
  OptionWidget({super.key, required this.option, required this.isSelected,required this.onTap});

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
      width: 320,
      height: 44,
      decoration: BoxDecoration(
        color: widget.isSelected? Color(0xFF6066d0): Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 5,spreadRadius: 0.4,color: Color.fromARGB(255, 139, 143, 219),offset: Offset(1, 2))
          ],
        borderRadius: BorderRadius.circular(30)
      ),
      margin: const EdgeInsets.only(top: 10 ),
      child: Padding(
        padding: const EdgeInsets.only(top: 11, left: 18),
        child: Text(widget.option, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      ),
    )
    );
  }
}