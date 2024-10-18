import 'package:flutter/material.dart';
import 'package:ice_cream_shop/started_page/forgot_pass_page.dart';
import 'package:ice_cream_shop/started_page/sign_in_page.dart';
import 'package:ice_cream_shop/started_page/sign_up_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: getBottomNaviItems()),
      body: listScreen()[_currentIndex],
    );
  }

  List<BottomNavigationBarItem> getBottomNaviItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.white,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: "Menu",
        backgroundColor: Colors.blue,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",
        backgroundColor: Colors.yellow,
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",
        backgroundColor: Colors.yellow,
      ),
    ];
  }

  List<Widget> listScreen() {
    return [
      const ForgotPassPage(),
      const SignInPage(),
      const SignUpPage(),
      const ForgotPassPage(),
      // Container(),
      // Container(),
      // Container(),
      // Container(),
    ];
  }
}
