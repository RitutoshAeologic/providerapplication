import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_application/core/constants/font_constant.dart';
import 'package:provider_application/core/services/todo_services/todo_services.dart';

import '../../../../core/models/todo_user/todo_user.dart';
import '../../../core/constants/colors.dart';

class TodoUserList extends StatefulWidget {
  const TodoUserList({Key? key}) : super(key: key);

  @override
  State<TodoUserList> createState() => _TodoUserListState();
}

class _TodoUserListState extends State<TodoUserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.todoTitle),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Consumer<TodoUserService> (
        builder:(context,value,child)=>
            ListView.builder(itemBuilder: (context, index) =>
        ListTile (
          title: Text(value.todos[index].title),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: (){
                TextEditingController  _textController = TextEditingController(text:  value.todos[index].title);
                showDialog(context: context,
                    builder: (context) => AlertDialog(
                        title: TextField(
                          controller: _textController,
                        ),
                        actions: <Widget>[
                          TextButton(onPressed: () {
                            var tempTodo = TodoUserModel(title: _textController.text);
                            tempTodo.id = (value.todos[index].id);
                            context.read<TodoUserService>().updateTodo(tempTodo);
                            Navigator.pop(context);
                          }, child: Text("Update"),),

                          TextButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text("Cancel"),),
                        ]
                    ));
              }, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){
                context.read<TodoUserService>().removeTodo(value.todos[index].id);
              }, icon: Icon(Icons.delete,color: Colors.redAccent,)),
            ],
          ),
        ),
          itemCount: value.todos.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.titleBG,
        onPressed: (){
          TextEditingController _textController = TextEditingController();
          showDialog(context: context,
              builder: (context) => AlertDialog(
            title: TextField(
              controller: _textController,
            ),
           actions: <Widget>[
             TextButton(onPressed: () {
                Navigator.pop(context);
             }, child: Text("Cancel"),),

             TextButton(
               onPressed: () {
               context.read<TodoUserService>().addTodo(
                   TodoUserModel(title: _textController.text ??  "Please Enter Data"));
               Navigator.pop(context);
             }, child: Text("Add"),),
           ]
          ));
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
