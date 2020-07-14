import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/Todo_Model/todo.dart';
import 'package:todoapp_provider/Todo_screen/todo_home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}


