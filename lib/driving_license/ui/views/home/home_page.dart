import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../dashboard/dashboard_screen.dart';
import '../eligible/eligibility_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      bottomNavigationBar: BottomAppBar(
        child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: SwipeableButtonView(
                buttonText: "     SLIDE TO CHECK ELIGIBILITY",
                buttonWidget: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                ),
                activeColor: Colors.greenAccent,
                isFinished: isFinished,
                onWaitingProcess: () {
                  Future.delayed(const Duration(seconds: 2), () {
                    setState(() {
                      isFinished = true;
                    });
                  });
                },
                onFinish: () async {
                  await Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: const EligibilityScreen()));

                  setState(() {
                    isFinished = false;
                  });
                })),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset('assets/images/jpg/dl.jpg')),

          ],
        ),
      ),
    );
  }
}