import 'package:flutter/material.dart';
import 'package:tp_flutter_talbi/choise.dart';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Choice> choices = [
    Choice(name: 'cinema', description: 'Regarder un film au cinéma'),
    Choice(name: 'petanque', description: 'Jouer à la pétanque'),
    Choice(name: 'fitness', description: 'Faire du fitness'),
    Choice(name: 'League Of Legend', description: 'Jouer à League Of Legend'),
    Choice(name: 'basket', description: 'Jouer au basket'),
    Choice(name: 'shopping', description: 'Faire du shopping'),
    Choice(name: 'programmation', description: 'Programmer en Dart'),
  ];

  void onChoiceSelected(Choice choice) {
    setState(() {
      choice.isSelected = !choice.isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(selectedChoices: choices.where((choice) => choice.isSelected).toList()),
          Footer(choices: choices, onChoiceSelected: onChoiceSelected),
        ],
      ),
    );
  }
}
