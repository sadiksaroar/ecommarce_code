// import 'package:e_comarce_project/screens/nav_bar_screens.dart';
import 'package:e_comarce_project/models/product_model.dart';
import 'package:e_comarce_project/screens/Home/Widget/category.dart';
import 'package:e_comarce_project/screens/Home/Widget/home_app_bar.dart';
import 'package:e_comarce_project/screens/Home/Widget/image_slider.dart';
import 'package:e_comarce_project/screens/Home/Widget/product_cart.dart';
import 'package:e_comarce_project/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              // for the CustomApp BAr sadik
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const MyScreenBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value) {
                    setState(() {
                      currentSlider = value;
                    });
                  }),
              const SizedBox(
                height: 20,
              ),
              // for category selection
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Foe You',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              // for shoping Item in this Project
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCards(
                    product: products[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
