import 'package:flutter/material.dart';
import 'package:ice_cream_shop/widgets/confirm_order_food.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedTabIndex,
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedTabIndex = index;
                      });
                    },
                    tabs: <Widget>[
                      buildIconTabView(
                        context,
                        icon: Icons.credit_card,
                        tabViewText: "Chờ xác nhận",
                        isSelected: _selectedTabIndex == 0,
                      ),
                      buildIconTabView(
                        context,
                        icon: Icons.shopping_bag,
                        tabViewText: "Chờ lấy hàng",
                        isSelected: _selectedTabIndex == 1,
                      ),
                      buildIconTabView(
                        context,
                        icon: Icons.car_crash,
                        tabViewText: "Đang giao hàng",
                        isSelected: _selectedTabIndex == 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 44),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              buildConfirmOrderFood(context, isWaitOrder: false),
              buildConfirmOrderFood(context, isWaitOrder: true),
              buildConfirmOrderFood(context, isWaitOrder: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIconTabView(
    BuildContext context, {
    IconData? icon,
    String tabViewText = "",
    isSelected = false,
  }) {
    return Column(
      children: [
        Icon(icon,
            color: (isSelected)
                ? Theme.of(context).colorScheme.primary
                : Colors.black),
        Text(
          tabViewText,
          style: TextStyle(
              fontSize: 10,
              color: (isSelected)
                  ? Theme.of(context).colorScheme.primary
                  : Colors.black),
        ),
      ],
    );
  }
}
