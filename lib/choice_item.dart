import 'package:flutter/material.dart';
import 'package:tp_flutter_talbi/choise.dart';

class ChoiceItem extends StatelessWidget {
  final Choice choice;

  ChoiceItem({required this.choice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: choice.isSelected ? Colors.blue : Colors.grey[200],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        choice.name,
        style: TextStyle(
          color: choice.isSelected ? Colors.white : Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
