import 'package:flutter/material.dart';
import 'package:tp_flutter_talbi/choise.dart';
import 'choice_item.dart';
import 'item_detail.dart';

class Header extends StatelessWidget {
  final List<Choice> selectedChoices;

  Header({required this.selectedChoices});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 600,
      color: Color(0xFF7a34f8),
      width: double.infinity,
      padding: EdgeInsets.all(26.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),

          Text(
            'Vos choix :',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Cliquez sur les choix en dessous !',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: selectedChoices
                .map((choice) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetail(
                      currentItem: choice,
                    ),
                  ),
                );
              },
              child: ChoiceItem(choice: choice),


            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
