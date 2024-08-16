import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30),
        ),
        backgroundColor: Colors.blueAccent,
        toolbarHeight: 70,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
