import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: Colors.white, padding: EdgeInsets.all(20)),
          onPressed: () {},
          icon: Image.asset(
            "images/icon.png",
            height: 20,
          ),
        ),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white, padding: EdgeInsets.all(20)),
            onPressed: () {},
            iconSize: 30,
            icon: Icon(Icons.notifications_outlined))
      ],
    );
  }
}
