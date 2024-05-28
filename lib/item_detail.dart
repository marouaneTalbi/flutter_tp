import 'package:flutter/material.dart';
import 'package:tp_flutter_talbi/choise.dart';

class ItemDetail extends StatelessWidget {
  final Choice currentItem;

  ItemDetail({required this.currentItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentItem.name),
      ),
      body: Center(
        child: Text('Détails de ${currentItem.name} : ${currentItem.description}'),
      ),
    );
  }
}
