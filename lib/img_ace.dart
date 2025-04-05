import 'package:flutter/material.dart';

class Ace extends StatelessWidget {
  const Ace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
          children: [
            Image.asset(
              'assets/image/virus.webp',
              height: 400,
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3,
                    )
                ),
              ),
            )
          ]
      ),
    );
  }
}