import 'package:flutter/material.dart';

class BoxDetail extends StatelessWidget {
  final String name;
  final String weight;
  final Color color;

  const BoxDetail ({
    super.key,
    required this.name,
    required this.weight,
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
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: color,
              ),
            ),
            SizedBox(width: 15,),
            Text(
              '${weight}g',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,

              ),
            )
          ],
        ),

      ],
    );
  }
}