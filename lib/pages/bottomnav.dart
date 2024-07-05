import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/order.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Wallet wallet;
  late Order order;
  @override
  void initState() {
    super.initState();
    homepage = Home();
    profile = Profile();
    wallet = Wallet();
    order = Order();
    pages = [homepage, profile, wallet, order];
    // currentPage = homepage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.black,
        items: [
        Icon(Icons.home, size: 30),
        Icon(Icons.person, size: 30),
        Icon(Icons.wallet, size: 30),
        Icon(Icons.shopping_bag, size: 30)],
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
        },
        ),
      body: pages[currentTabIndex],
    );
  }
}