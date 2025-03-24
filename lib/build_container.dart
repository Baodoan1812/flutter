import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final Color color;
  final String text;
  const BuildContainer({super.key,required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: color, width: 5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
