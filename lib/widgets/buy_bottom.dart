import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/main_button.dart';

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
          buildMainButton(
            onPressed: () {},
            backgroudColor: Colors.white,
            height: 50,
            width: 130,
            text: "Mua hàng",
            textColor: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    ),
  );
}
