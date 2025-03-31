import 'dart:math';

import 'package:flutter/material.dart';
import './nutritional_box.dart';
import './food_box.dart';
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

          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80), // Increase height
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Add padding
              child: AppBar(
                backgroundColor: Colors.white, // White background
                elevation: 0, // Remove shadow
                centerTitle: true,
                title: Text(
                  'Breakfast',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      // Handle back button
                    },
                  ),
                ),
                actions: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: IconButton(
                      icon: Icon(Icons.share, color: Colors.black),
                      onPressed: () {
                        // Handle share button
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    children: [
                  Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade300, width: 0), // Bottom border effect
                    ),
                  ),
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20), // Left & right padding
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Breakfast',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.add, size: 28, color: Colors.black),
                    onPressed: () {
                      // Handle add button press
                    },
                  ),
                                ],
                              ),
                            ),
                      Divider(
                        height: 34,
                        color: Colors.grey,
                        thickness: 2.5,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "452",
                                        style: TextStyle(
                                          fontSize: 62,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "kcal",
                                        style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],

                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Normal",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                NutritionalBox(color: Colors.purpleAccent, name: "Protein", maxVal: 80, val: 13),
                                NutritionalBox(color: Colors.orange, name: "Fat", maxVal: 60, val: 20),
                                NutritionalBox(color: Colors.black87, name: "Carbs", maxVal: 200, val: 19),
                              ],
                            ),
                          ],
                        ),

                      ),
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                          SizedBox(height: 15,),
                          FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                          SizedBox(height: 15,),

                        ],
                      ),
                    ],

                  ),
                ),
            ),
          ),
        ),
      );
  }
}
