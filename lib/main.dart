import 'dart:math';

import 'package:flutter/material.dart';
import './build_container.dart';
import './build_schedule.dart';
import './build_task.dart';
void main() {
  runApp(const MainApp());
}



class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp>{
  late int _id;
  @override
  void initState(){
    super.initState();
    _id = 0;
  }
  final List<Map<String, dynamic>> events = [
    {
      "time": "07:00",
      "session": "AM",
      "title": "CTDL & GT",
      "description": "Nguyễn Duy Phương",
    },
    {
      "time": "09:00",
      "session": "AM",
      "title": "Lí thuyết thông tin",
      "description": "Phạm Văn Sự",
    },
    {
      "time": "13:00",
      "session": "PM",
      "title": "Tư tưởng HCM",
      "description": "Phạm Thị Khánh",
    },
    {
      "time": "15:00",
      "session": "PM",
      "title": "Toán rời rạc 2",
      "description": "Nguyễn Tất Thắng",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SafeArea(


        child: Scaffold(
          floatingActionButton: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100)
            ),

            child: InkWell(
              onTap: () => setState(() {
                _id = Random().nextInt(4);
              }),
              child: Center(
                child: Text(
                  "+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
            ),
          ),
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                'Day la title'
              ),
              centerTitle: true,
              leading: Text('leading')

            ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateCard(date: "15", day: "Mon",color:Colors.white),
                    const SizedBox(width: 20),
                    DateCard(date: "16", day: "Tue",color:Colors.white),
                    const SizedBox(width: 20),
                    DateCard(date: "17", day: "Wed",color: Colors.blue),
                    const SizedBox(width: 20),
                    DateCard(date: "18", day: "Thu",color:Colors.white),
                  ],
                 ),
                const SizedBox(height: 30),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EventCard(
                      time: events[_id]["time"],
                      period: events[_id]["session"],
                      title: events[_id]["title"],
                      description:events[_id]["description"],
                    ),
                  ],
                ),

                  ],
                ),
            ),
          ),
        ),
      );
  }
}
