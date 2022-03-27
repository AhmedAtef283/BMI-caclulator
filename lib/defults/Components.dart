import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget AlarmBuilder (String time,date) =>


    Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8,),
            child: Row(
              children: [
                Icon(Icons.label, color: Colors.teal,),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Alarm',
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  date,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8,),
            child: Row(
              children: [
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );




void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
