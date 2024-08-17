import 'package:final_todo_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Add New Task',
          style: TextStyle(
              fontSize: 22)
            ,),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              labelText: "Title",
              border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(18) )
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              labelText: "Description",
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(18),
              )
            ),
          ),
          SizedBox(height: 35,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Select Date',
            style: TextStyle(
              fontSize: 22,
            ),
            ),
          ),
          SizedBox(height: 20,),
          Text('17/8/2024',
            style: TextStyle(
              fontSize: 18,
            fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15,),
          Container(
            // width: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                )
              ),
                onPressed: (){},
                child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),)
            ),
          )
        ],
      ),
    );
  }
}
