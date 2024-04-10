import 'package:delivery/presentation/bottomnavigationscreens/categories.dart';
import 'package:delivery/presentation/bottomnavigationscreens/checkout_scroll_view.dart';
import 'package:delivery/presentation/bottomnavigationscreens/profile.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  List navigation = [
    const CategorieScreen(),
    const CheckoutScrollView(),
    const ProfileScreen(),
  ];
  void onTap(int num) {
    if (num >= 0 && num < navigation.length) {
      setState(() {
        index = num;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigation[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 1, color: Color(0xffD9D0E3)))),
        child: GNav(
          padding: EdgeInsets.only(left: 52, right: 52, top: 28, bottom: 28),
          activeColor: Color(0xff7203FF),
          color: Color(0xff9586A8),
          iconSize: 25,
          tabs: [
            GButton(
              icon: Icons.view_comfy_alt,
              onPressed: () {
                onTap(0);
              },
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              onPressed: () {
                onTap(1);
              },
            ),
            GButton(
              icon: Icons.person_2_outlined,
              onPressed: () {
                onTap(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
