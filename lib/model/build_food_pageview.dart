import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';

Widget BuildFoodPageview(
  BuildContext context, {
  Color backgroudColor = Colors.white,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroudColor,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 14, bottom: 14, left: 115, right: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kem cốc siêu to khổng lồ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                const Text(
                  "Không ngon không lấy tiền",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "9.000 VND",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      "10.000 VND",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white.withOpacity(0.5),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                buildButton(
                  onPressed: () {},
                  backgroudColor: Colors.yellow,
                  textColor: Colors.black,
                  width: 30,
                  height: 30,
                  text: "Mua",
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/ice_cream_heading.jpg',
              scale: 10,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/socola_heading.png',
              scale: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 20,
                width: 68,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    "10% sale",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
