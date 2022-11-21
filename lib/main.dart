import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider_application/core/services/todo_services/todo_services.dart';
import 'package:provider_application/core/viewmodels/eligible_viewmodel.dart';
import 'package:provider_application/core/viewmodels/user_data_viewmodel.dart';
import 'package:provider_application/todo_app/todo_views/todo_list/todoUserList.dart';

import 'core/constants/firebase_auth_constants.dart';
import 'driving_license/ui/views/home/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await firebaseInitialization;
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driving Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:
      //TodoUserList()
       MyHomePage(title: 'Let\'s Drive',),
    );
  }
}
List<SingleChildWidget> providers = [
  ChangeNotifierProvider<TodoUserService>(create: (_) => TodoUserService()),
  ChangeNotifierProvider<EligibilityScreenProvider>(create: (_) => EligibilityScreenProvider()),
  ChangeNotifierProvider<UserViewModel>(create: (_) => UserViewModel()),
];

