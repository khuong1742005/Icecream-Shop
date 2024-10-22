import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/build_container_bottom.dart';
import 'package:ice_cream_shop/model/build_food_favou.dart';
import 'package:ice_cream_shop/model/search_box.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 567,
              child: ListView(
                children: [
                  const SearchBox(),
                  const SizedBox(height: 22),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      buildFoodFavou(
                        context,
                        backgroundColor: Colors.pink,
                        foodName: "Kem dâu nguyên quả",
                        foodImage: "assets/ice_cream_favou.jpg",
                        foodRate: "120",
                        foodPrice: "15.000 VND",
                      ),
                      buildFoodFavou(
                        context,
                        backgroundColor: Colors.blue,
                        foodName: "Kem dâu nguyên quả",
                        foodImage: "assets/ice_cream_favou.jpg",
                        foodRate: "140",
                        foodPrice: "13.000 VND",
                      ),
                      buildFoodFavou(
                        context,
                        backgroundColor: Colors.brown,
                        foodName: "Kem dâu nguyên quả",
                        foodImage: "assets/ice_cream_favou.jpg",
                        foodRate: "160",
                        foodPrice: "17.000 VND",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          buidBuyButton(context),
        ],
      ),
    );
  }
}
