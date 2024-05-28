import 'package:flutter/material.dart';
import 'package:tp_flutter_talbi/choise.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final List<Choice> choices;
  final Function(Choice) onChoiceSelected;

  Footer({required this.choices, required this.onChoiceSelected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 4.0,
          runSpacing: 9.0,
          children: choices
              .map((choice) => GestureDetector(
            onTap: () => onChoiceSelected(choice),
            child: ChoiceItem(choice: choice),
          ))
              .toList(),
        ),
      ),
    );
  }
}
