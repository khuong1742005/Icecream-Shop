import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/food_favourute.dart';

Widget buildConfirmOrderFood (BuildContext context, {bool isWaitOrder = false})
{
  return ListView(
    shrinkWrap: true,
    children: [
      buildFoodFavou(
        context,
        backgroundColor: Colors.pink,
        foodName: "Kem dâu nguyên quả",
        foodImage: "assets/ice_cream_favou.jpg",
        foodRate: "120",
        foodPrice: "15.000 VND",
        isInShop: (isWaitOrder) ? false : true,
      ),
      buildFoodFavou(
        context,
        backgroundColor: Colors.blue,
        foodName: "Kem dâu nguyên quả",
        foodImage: "assets/ice_cream_favou.jpg",
        foodRate: "140",
        foodPrice: "13.000 VND",
        isInShop: (isWaitOrder) ? false : true,
      ),
      buildFoodFavou(
        context,
        backgroundColor: Colors.brown,
        foodName: "Kem dâu nguyên quả",
        foodImage: "assets/ice_cream_favou.jpg",
        foodRate: "160",
        foodPrice: "17.000 VND",
        isInShop: (isWaitOrder) ? false : true,
      ),
      buildFoodFavou(
        context,
        backgroundColor: Colors.blue,
        foodName: "Kem dâu nguyên quả",
        foodImage: "assets/ice_cream_favou.jpg",
        foodRate: "140",
        foodPrice: "13.000 VND",
        isInShop: (isWaitOrder) ? false : true,
      ),
      buildFoodFavou(
        context,
        backgroundColor: Colors.brown,
        foodName: "Kem dâu nguyên quả",
        foodImage: "assets/ice_cream_favou.jpg",
        foodRate: "160",
        foodPrice: "17.000 VND",
        isInShop: (isWaitOrder) ? false : true,
      ),
    ],
  );
}