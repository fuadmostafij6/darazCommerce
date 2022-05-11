import 'package:flutter/material.dart';

import 'Home.dart';
import 'Profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final PageController _pageController = PageController();

  final screen = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeIn);
          },
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
      body: PageView(
        controller: _pageController,
        onPageChanged: (newPage) {
          setState(() {
            _page = newPage;
          });
        },
        children: const [Home(), Home(), Home(), Profile()],
      ),
    );
  }
}
