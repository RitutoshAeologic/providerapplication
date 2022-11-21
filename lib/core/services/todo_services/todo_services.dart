import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../models/todo_user/todo_user.dart';
import '../../viewmodels/base_viewmodel.dart';

class TodoUserService extends BaseViewModel{
  List<TodoUserModel> todos = [];
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  addTodo(TodoUserModel todo) async {
    await firebaseFirestore.collection('todos').add(
      {"title" :todo.title,}
    ).then((value) {
      todo.id = value.id ;
      todos.add(todo);
    });
  notifyListeners();
  }

  removeTodo(id)async{
    var index = todos.indexWhere((element) => element.id == id);
     if (index != -1) {
       await firebaseFirestore.collection('todos').doc(id).delete();
       todos.removeAt(index);
     }
     notifyListeners();
  }
  updateTodo(TodoUserModel todo) async{
    var index = todos.indexWhere((el) => el.id == todo.id);
    if(index != -1) {
      await firebaseFirestore.collection('todos').doc(todo.id).update(
        {
          'title' : todo.title
        }
      );
      todos[index] = todo;
    }
    notifyListeners();
  }
}