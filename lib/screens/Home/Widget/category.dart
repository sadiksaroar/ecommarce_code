import 'package:e_comarce_project/models/categaroy_0.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                categories[index].title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
