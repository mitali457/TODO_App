import 'package:flutter/material.dart';
import 'package:todoapp_provider/Todo_Model/todo_item.dart';
import 'package:todoapp_provider/Todo_widget/customshapeborder.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        shape: CustomShapeBorder(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(''),
      ),
    );
  }
}