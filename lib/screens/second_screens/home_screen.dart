import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/categories.dart';
import 'package:ice_cream_shop/widgets/food_grid.dart';
import 'package:ice_cream_shop/widgets/food_pageview.dart';
import 'package:ice_cream_shop/widgets/search_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SearchBox(),
            const SizedBox(height: 22),
            SizedBox(
              height: 160,
              child: PageView(
                children: <Widget>[
                  BuildFoodPageview(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foodName: "Kem cốc siêu to khổng lồ",
                    foodDescription: "Không ngon không lấy tiền",
                    newPrice: "9.000 VND",
                    oldPrice: "10.000 VND",
                    sales: "10% sales",
                    foodImage: "assets/ice_cream_heading.jpg",
                    foodImageExtra: "assets/socola_heading.png",
                  ),
                  BuildFoodPageview(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foodName: "Kem cốc siêu to khổng lồ 2",
                    foodDescription: "Không ngon vẫn lấy tiền",
                    newPrice: "8.000 VND",
                    oldPrice: "12.000 VND",
                    sales: "14% sales",
                    foodImage: "assets/ice_cream_heading.jpg",
                    foodImageExtra: "assets/socola_heading.png",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            Text("Categories", style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCategories(icon: const Icon(Icons.icecream)),
                  buildCategories(icon: const Icon(Icons.icecream_outlined)),
                  buildCategories(icon: const Icon(Icons.cake)),
                  buildCategories(icon: const Icon(Icons.water)),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New", style: Theme.of(context).textTheme.titleLarge),
                Text(
                  "See more",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 10,
                  ),
                )
              ],
            ),
            const SizedBox(height: 17),
            SizedBox(
              height: 400,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) {
                  return buildFoodGrid(
                    context,
                    foodImg: "assets/food_grid.png",
                    foodName: "Kem quý's tộc",
                    foodDescription:
                        "Kem trộn cùng bánh mì, rắc vừng và thêm trái chuối",
                    foodPrice: "15.000 VND",
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
