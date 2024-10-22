import 'package:flutter/material.dart';

Widget buidBuyButton(
  BuildContext context,
) {
  return Container(
    height: 100,
    width: 395,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Theme.of(context).colorScheme.tertiary,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Tổng thanh toán",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
              ),
              Text(
                "30.000 VND",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "Mua hàng",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
