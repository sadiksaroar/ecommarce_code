import 'package:e_comarce_project/screens/Cart/cart_screen.dart';
import 'package:e_comarce_project/screens/Home/homeScreen.dart';
import 'package:e_comarce_project/screens/Favorite/favrite.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffff660e); // Replace with your desired color
const kcontenedColor = Color(0xffF5F5F5);

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    Scaffold(),
    // Favrite(),
    HomeScreen(),
    CartScreen(),
    //Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 30,
                  color:
                      currentIndex == 0 ? kPrimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color:
                      currentIndex == 1 ? kPrimaryColor : Colors.grey.shade400,
                )),
            const SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color:
                      currentIndex == 3 ? kPrimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color:
                      currentIndex == 4 ? kPrimaryColor : Colors.grey.shade400,
                )),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
