import 'package:flutter/material.dart';
import './img_gojo.dart';
import './img_ace.dart';
import './img_virus.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              children: [
                Column(
                  children: [
                    Gojo(),
                    SizedBox(
                      height: 20,
                    ),

                    Ace(),
                    SizedBox(
                      height: 20,
                    ),

                    Virus(),

                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}