import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 15,
            monthColor: Colors.black,
            dayColor: Colors.blue,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: primaryColor,
            selectableDayPredicate: (date) => date.day != 5,
            locale: 'en'
          )
        ]
    );
  }
}
