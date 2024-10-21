import 'package:flutter/material.dart';

Widget buildFoodGrid(
  BuildContext context, {
  String foodImg = "",
  String foodName = "",
  String foodDescription = "",
  String foodPrice = "",
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 24, bottom: 25),
    child: Container(
      height: 162,
      width: 151,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            foodImg,
            width: 114,
            height: 95,
          ),
          Text(
            foodName,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Colors.brown),
          ),
          Text(foodDescription),
          Row(
            children: [
              Text(foodPrice),
              Container(
                height: 21,
                width: 38,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Mua"),
              )
            ],
          )
        ],
      ),
    ),
  );
}
