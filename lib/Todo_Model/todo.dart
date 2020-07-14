import 'package:flutter/material.dart';

class MyModel with ChangeNotifier {
  //                          <--- MyModel
  
  List<String> todo = [];
  bool editable = false;

  void addtodoItem(String data) {
    todo.add(data);

    notifyListeners();
  }

  void deleteTodoItem(dataitem) {
    todo.remove(dataitem);
    notifyListeners();
  }
  void editTodoItem(data) {
   //editable = !editable;
  editable=true;
  //data=todo.item;
   //todo.replaceRange(1,2,data); 
    notifyListeners();
  }
  onSubmit(String submit) {
    if (submit.isNotEmpty) {
      todo.add((submit));
      notifyListeners();
    }
  }
}
