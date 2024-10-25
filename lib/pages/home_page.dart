import 'package:flutter/material.dart';
import 'package:ice_cream_shop/screens/first_screens/forgot_pass_screen.dart';
import 'package:ice_cream_shop/screens/first_screens/sign_up_screen.dart';
import 'package:ice_cream_shop/screens/second_screens/favourite_screen.dart';
import 'package:ice_cream_shop/screens/second_screens/home_screen.dart';
import 'package:ice_cream_shop/screens/second_screens/shop_screen.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _currentIndex = 0;
  bool _isBell = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isBell = !_isBell;
              });
            },
            child: iconBell(),
          ),
          const SizedBox(width: 5),
          Container(
            height: 30,
            width: 30,
            color: Colors.pink,
          ),
          const SizedBox(width: 17),
        ],
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items:
            getBottomNaviItems(color: Theme.of(context).colorScheme.tertiary),
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.primary),
      ),
      body: listScreen()[_currentIndex],
    );
  }

  List<BottomNavigationBarItem> getBottomNaviItems({Color? color}) {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: "Home",
        backgroundColor: color,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.favorite_outline),
        label: "Favourite",
        backgroundColor: color,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.shopping_bag),
        label: "Shop",
        backgroundColor: color,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: "Profile",
        backgroundColor: color,
      ),
    ];
  }

  List<Widget> listScreen() {
    return [
      const HomePage(),
      const FavouritePage(),
      const ShopScreen(),
      const ForgotPassPage(),
    ];
  }

  Widget iconBell() {
    return (_isBell)
        ? const Icon(Icons.notifications_active, color: Colors.yellow)
        : const Icon(Icons.notifications_none);
  }
}
