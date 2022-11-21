import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationSubmit extends StatelessWidget {
  const ApplicationSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Application Submit'),
          )
        ],
      ),
    );
  }
}
