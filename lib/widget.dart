import 'package:flutter/material.dart';
/*
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show Calendar_Carousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart'; */

class ReusableWidgets {
  static getAppBar(context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        IconButton(
          icon: Icon(Icons.calendar_today),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/calendarPage');
          },
        ),
        IconButton(
          icon: Icon(Icons.mode_edit),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/updatesPage');
          },
        ),
        IconButton(
          icon: Icon(Icons.local_pharmacy),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/profilePage');
          },
        ),
        IconButton(
          icon: Icon(Icons.person),
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/userProfilePage');
          },
        )
      ],
    ));
  }

}
