import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common_widget/CustomCard.dart';

class HomeWeatherSkeleton extends StatelessWidget {
  const HomeWeatherSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25, bottom: 10),
          child: const Text(
            "Discovery",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCard(height: 180, width: 165),
              CustomCard(height: 180, width: 165),
            ],
          ),
        ),
      ],
    );
  }
}
