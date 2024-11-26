import 'package:e_comarce_project/models/product_model.dart';
import 'package:e_comarce_project/screens/Datils/widget/addto_cart.dart';
import 'package:e_comarce_project/screens/Datils/widget/datiles_app_bar.dart';
import 'package:e_comarce_project/screens/Datils/widget/description.dart';
import 'package:e_comarce_project/screens/Datils/widget/image_slider.dart';
import 'package:e_comarce_project/screens/Datils/widget/iteams_detilas.dart';
import 'package:e_comarce_project/screens/nav_bar_screens.dart';
import 'package:flutter/material.dart';

class DatilesScreen extends StatefulWidget {
  final Product
      product; // Ensure your Product model is properly defined and imported
  const DatilesScreen({super.key, required this.product});

  @override
  State<DatilesScreen> createState() => _DatilesScreenState();
}

class _DatilesScreenState extends State<DatilesScreen> {
  int currentImage = 0;
  // int currentSlide = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          kcontenedColor, // Ensure kPrimaryColor is defined somewhere
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // For back button, share, and favorite icons
              const DetilAppBar(),
              // for detlis image slider
              MyImageSlider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (index) => AnimatedContainer(
                          duration: Duration(microseconds: 300),
                          width: currentImage == index ? 15 : 8,
                          height: 8,
                          margin: EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentImage == index
                                  ? Colors.black
                                  : Colors.transparent,
                              border: Border.all(color: Colors.black)),
                        )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // for product name , price , and seller
                    IteamsDetilas(
                      product: widget.product,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Color",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: List.generate(
                          widget.product.colors.length,
                          (index) => GestureDetector(
                                onTap: () {
                                  currentColor == index;
                                },
                                child: AnimatedContainer(
                                  duration: Duration(microseconds: 300),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentColor == index
                                          ? Colors.white
                                          : widget.product.colors[index],
                                      border: currentColor == index
                                          ? Border.all(
                                              color:
                                                  widget.product.colors[index])
                                          : null),
                                  padding: currentColor == index
                                      ? const EdgeInsets.all(2)
                                      : null,
                                  margin: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: widget.product.colors[index],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              )),
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    // Description()
                    Description(description: widget.product.description)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
