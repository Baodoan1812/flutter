import 'package:flutter/material.dart';

class Gojo extends StatelessWidget {
  const Gojo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset(
                  'assets/image/virus.webp',
                  height: 800,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView(
              children: [
                Image.asset(
                  'assets/image/virus.webp',
                  height: 800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}