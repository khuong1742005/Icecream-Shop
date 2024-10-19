import 'package:flutter/material.dart';
import 'package:ice_cream_shop/model/build_food_pageview.dart';
import 'package:ice_cream_shop/model/search_box.dart';

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
      body: ListView(
        children: [
          const SearchBox(),
          const SizedBox(height: 22),
          SizedBox(
            height: 160,
            child: PageView(
              children: <Widget>[
                BuildFoodPageview(context,
                    backgroudColor: Theme.of(context).colorScheme.primary),
                BuildFoodPageview(context,
                    backgroudColor: Theme.of(context).colorScheme.primary),
              ],
            ),
          )
        ],
      ),
    );
  }
}
