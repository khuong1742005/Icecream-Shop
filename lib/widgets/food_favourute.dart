import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/main_button.dart';

Widget buildFoodFavou(
  BuildContext context, {
  Color? backgroundColor,
  String foodName = "",
  String foodImage = "",
  String foodRate = "120",
  String foodPrice = "",
  bool isInShop = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Container(
      height: 130,
      width: 350,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
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
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow),
                      Text(
                        foodRate,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(width: 36),
                      Text(
                        foodPrice,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.add, size: 20),
                            Text(
                              "|",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("1"),
                            Text(
                              "|",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.remove, size: 20),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      if (isInShop)
                        buildMainButton(
                          onPressed: () {},
                          backgroudColor:
                              Theme.of(context).colorScheme.secondary,
                          height: 25,
                          width: 40,
                          text: "Hủy",
                          textColor: Colors.white,
                          fontSize: 15,
                        ),
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              foodImage,
              height: 110,
              width: 80,
            ),
          ],
        ),
      ),
    ),
  );
}
