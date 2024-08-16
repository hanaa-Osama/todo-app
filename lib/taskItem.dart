import 'package:final_todo_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 120,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: primaryColor,
            ),
          ),
          SizedBox(width: 30,),
          Column(
            children: [
              Text("Task Title",
              style: TextStyle(
                color: primaryColor,
                fontSize: 28,
                fontWeight:FontWeight.w700
              ),
              ),
              Text("Task Discription")
            ],
          ),
          Spacer(),
          IconButton(onPressed: (){

          },
              icon: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryColor,
                ),
                child: Icon(Icons.check,
                color: Colors.white,
                size: 30,),
              ))
        ],
      ),
    );
  }
}
