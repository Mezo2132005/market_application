
import 'package:flutter/material.dart';
import 'package:market_application/screens/account.dart';
import 'package:market_application/screens/cart.dart';
import 'package:market_application/screens/explore.dart';
import 'package:market_application/screens/favorite.dart';
import 'package:market_application/screens/home.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  
  final List<Widget> currentScreen = [
  Home(),
  Explore(),
  Cart(),
  Favorite(),
  Account(),
  ];

  int currentTap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentTap = value;
          });
        },
        currentIndex: currentTap,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.manage_search_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

          ] ),
      body: currentScreen[currentTap],

    );
  }
}