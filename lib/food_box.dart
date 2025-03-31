import 'package:flutter/material.dart';
import 'box_detail.dart';

class FoodBox extends StatelessWidget {
  final String name, kcal, protein, fat, carbs, weight;

  const FoodBox({
    super.key,
    required this.name,
    required this.kcal,
    required this.protein,
    required this.fat,
    required this.carbs,
    required this.weight
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
          color: Color(0xffdddddd)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Icon(
                Icons.edit_note,
                size: 30,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: kcal,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "kcal",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                weight,
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoxDetail(name: "Protein", weight: protein, color: Colors.purpleAccent,),
              BoxDetail(name: "Fat", weight: fat, color: Colors.orange,),
              BoxDetail(name: "Carbs", weight: carbs, color: Colors.black87,),
            ],
          )
        ],
      ),

    );
  }
}