import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project1/view/cart_screen.dart';
import 'package:project1/view/home_page.dart';
import 'package:project1/view/profile_screen.dart';
import 'package:project1/view/wishlist_screen.dart';

import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: listScreen[index],
      ),
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.black,
        colorSelected: Colors.red,
        indexSelected: index,
        paddingVertical: 24,
        onTap: (int index) => setState(() {
          this.index = index;
        }),
      ),
    );
  }

  int index = 0;

  final List listScreen = [
    HomePage(),
    NotificationScreen(),
    WishListScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  final List<TabItem> items = const [
    TabItem(
      icon: Icons.home_outlined,
      title: 'Home',
    ),
    TabItem(
      icon: Icons.notifications,
      title: 'Notification',
    ),
    TabItem(
      icon: Icons.favorite_border,
      title: 'Wishlist',
    ),
    TabItem(
      icon: Icons.shopping_cart_outlined,
      title: 'Cart',
    ),
    TabItem(
      icon: Icons.account_box,
      title: 'profile',
    ),
  ];
}
