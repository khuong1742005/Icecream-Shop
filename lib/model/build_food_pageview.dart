import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/welcome_page_button.dart';

class BuildFoodPageview extends StatelessWidget {
  final Color backgroundColor;
  final String foodName;
  final String foodDescription;
  final String newPrice;
  final String oldPrice;
  final String sales;
  final String foodImage;
  final String foodImageExtra;

  const BuildFoodPageview({
    super.key,
    required this.backgroundColor,
    required this.foodName,
    required this.foodDescription,
    required this.newPrice,
    required this.oldPrice,
    required this.sales,
    required this.foodImage,
    required this.foodImageExtra,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
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
                  foodName,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                Text(
                  foodDescription,
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      newPrice,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      oldPrice,
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
              foodImage,
              scale: 10,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              foodImageExtra,
              scale: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    sales,
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
    );
  }
}
