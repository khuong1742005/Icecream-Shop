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
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              foodDescription,
              style: const TextStyle(
                fontSize: 8,
                color: Colors.brown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    foodPrice,
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 21,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Mua",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
