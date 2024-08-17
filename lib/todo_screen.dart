import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:final_todo_app/settingTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'addTask.dart';
import 'colors.dart';
import 'taskTab.dart';

class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex=0;
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: wallpaperColor,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('ToDo',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 30),
        ),
        backgroundColor: primaryColor,
        toolbarHeight: 80,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context){
                return Padding(
                  padding: EdgeInsets.only(
                    bottom:MediaQuery.of(context).viewInsets.bottom
                  ),
                  child: AddTask(),
                );
              }
              );
        },
        clipBehavior: Clip.none,
        backgroundColor: primaryColor,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        child: Icon(Icons.add,
          color: Colors.white,
          size: 40,),
        ),

      bottomNavigationBar:
      BottomAppBar(
        // color: Colors.white,
        notchMargin: 9,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),

        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          onTap: (index){
            selectedIndex=index;
            setState(() {
            });
          },
          currentIndex: selectedIndex,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list,),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,),
                label: "")
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
  List<Widget> tabs =[TasksTab(),SettingTab()];
}
