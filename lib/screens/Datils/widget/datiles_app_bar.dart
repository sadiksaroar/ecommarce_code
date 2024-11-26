import 'package:e_comarce_project/screens/nav_bar_screens.dart';
import 'package:flutter/material.dart';

class DetilAppBar extends StatelessWidget {
  const DetilAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontenedColor,
                padding: const EdgeInsets.all(15)),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontenedColor,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(Icons.shape_line_outlined),
          ),
          const SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontenedColor,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
