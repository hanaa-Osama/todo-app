import 'package:final_todo_app/todo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}
class TodoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}