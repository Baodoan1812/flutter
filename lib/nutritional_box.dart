import 'package:flutter/material.dart';

class NutritionalBox extends StatelessWidget {
  final String name;
  final int val;
  final int maxVal;
  final Color color;
  const NutritionalBox ({
    super.key,
    required this.name,
    required this.maxVal,
    required this.val,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 5,
          width: 115,
          decoration: BoxDecoration(
            color: Color(0xffbfbebe),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 5,
              width: val * 115 / maxVal,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ),
        Text(
          '${val.toString()}/${maxVal.toString()}g',
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}