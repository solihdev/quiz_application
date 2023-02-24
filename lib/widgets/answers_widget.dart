import 'package:flutter/material.dart';
import 'package:quiz_application/data/models/question_model.dart';
import 'package:quiz_application/widgets/option_widget.dart';


class AnswersWidget extends StatefulWidget {
  QuestionModel questionModel;
  final ValueChanged<bool> onAnswerSelected;
  AnswersWidget({super.key, required this.questionModel, required this.onAnswerSelected});

  @override
  State<AnswersWidget> createState() => _AnswersWidgetState();
}

class _AnswersWidgetState extends State<AnswersWidget> {
  
  int selectedIndex=-1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OptionWidget(
        isSelected: selectedIndex==1, option: widget.questionModel.option1, 
        onTap: (){
          setState(() {
            selectedIndex=1;
          });
          widget.onAnswerSelected(
            widget.questionModel.trueAnswer==selectedIndex);
        },
        ),
        OptionWidget(
        isSelected: selectedIndex==2,option: widget.questionModel.option2, 
        onTap: (){
          setState(() {
            selectedIndex=2;
          });
          widget.onAnswerSelected(
            widget.questionModel.trueAnswer==selectedIndex);
        },
        ),
        OptionWidget(
        isSelected: selectedIndex==3,option: widget.questionModel.option3, 
        onTap: (){
          setState(() {
            selectedIndex=3;
          });
          widget.onAnswerSelected(
            widget.questionModel.trueAnswer==selectedIndex);
        },
        ),
        OptionWidget(
          isSelected: selectedIndex==4,option: widget.questionModel.option4,
        onTap: (){
          setState(() {
            selectedIndex=4;
          });
          widget.onAnswerSelected(
            widget.questionModel.trueAnswer==selectedIndex);
        },
        ),
      ],
    );
  }
}