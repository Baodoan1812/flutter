import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String date;
  final String day;
  final Color color;
  const DateCard({super.key, required this.date, required this.day, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            day,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}