import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/CustomCard.dart';

class HomeLicense extends StatefulWidget {
  const HomeLicense({super.key});

  @override
  State<HomeLicense> createState() => _HomeLicenseState();
}

class _HomeLicenseState extends State<HomeLicense> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("My License", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            TextButton(onPressed: () {}, child: Text("View All Licenses"))
          ],
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 180,
            enableInfiniteScroll: false,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CustomCard(
                  width: MediaQuery.of(context).size.width,
                  child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),
        Text("${currentIndex + 1} of 5"),
      ],
    );
  }
}
