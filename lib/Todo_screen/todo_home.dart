import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoapp_provider/Todo_Model/todo.dart';

import 'package:todoapp_provider/Todo_screen/tododetails_screen.dart';

import 'package:todoapp_provider/Todo_widget/customshapeborder.dart';

class Home extends StatelessWidget {
  final TextEditingController _textEditingController =
      new TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController itemnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'TODO - LISTITEM!!',
          textAlign: TextAlign.center,
        ),
        shape: CustomShapeBorder(),
      ),
      body: Column(
        children: <Widget>[
          Consumer<MyModel>(builder: (context, myModel, child) {
            return Container(
                height: 180,
                width: 300,
                child: ListView(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: TextField(
                      controller: _textEditingController,
                      textAlign: TextAlign.center,
                      //maxLines: 2,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                      decoration: InputDecoration(
                        hintText: 'Enter text to add',
                        labelText: 'Add ItemName',
                        suffixIcon: IconButton(
                          onPressed: () => itemnameController.clear(),
                          icon: Icon(
                            Icons.add,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      onSubmitted: (val) {
                        myModel.addtodoItem(val);
                        _textEditingController.clear();
                      },
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.only(top: 60),
                  //   child: TextField(

                  //     controller: _textEditingController,
                  //     textAlign: TextAlign.center,
                  //     //maxLines: 2,
                  //     style: TextStyle(
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.indigo),
                  //     decoration: InputDecoration(
                  //       hintText: 'Description',
                  //       labelText: 'Add Itemdescription',
                  //       suffixIcon: IconButton(
                  //         onPressed: () => descriptionController .clear(),
                  //         icon: Icon(
                  //           Icons.add,
                  //           color: Colors.indigo,
                  //         ),
                  //       ),
                  //     ),
                  //     onSubmitted: (val) {
                  //       myModel.addtodoItem(val);
                  //       _textEditingController.clear();
                  //     },
                  //   ),

                  //)
                ]));
          }),
          Consumer<MyModel>(builder: (context, myModel, child) {
            return ListView(
              shrinkWrap: true,
              children: myModel.todo.map((item) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(item,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: new IconButton(
                              icon:
                                  const Icon(Icons.edit, color: Colors.indigo),
                              onPressed: () {
                                myModel.editTodoItem(item);
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: new IconButton(
                              icon:
                                  new Icon(Icons.delete, color: Colors.indigo),
                              onPressed: () {
                                myModel.deleteTodoItem(item);
                              }),
                        )
                      ],
                    ));
                /*return ListTile(
                    title: Text(item,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo)),

                    trailing: Column(children: <Widget>[
                      new IconButton(
                          icon: const Icon(Icons.edit, color: Colors.indigo),
                          onPressed: () {
                            myModel.editTodoItem(item);
                          }),
                      new IconButton(
                          icon: new Icon(Icons.delete, color: Colors.indigo),
                          onPressed: () {
                            myModel.deleteTodoItem(item);
                          }),
                    ]));*/
              }).toList(),
            );
          }),
          RaisedButton(
              child: Text(
                'Save',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
              onPressed: () {
                // mymodel.addtodoItem();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              })
        ],
      ),
    );
  }
}
