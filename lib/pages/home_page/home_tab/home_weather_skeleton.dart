import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common_widget/CustomCard.dart';

class HomeWeatherSkeleton extends StatelessWidget {
  const HomeWeatherSkeleton({super.key});

  renderSkeletonItem(
      {double? height, double? width = double.infinity, EdgeInsetsGeometry? margin}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white,
        ),
        margin: margin,
        height: height,
        width: width,
      ),
    );
  }

  renderCard({required String label}) {
    return CustomCard(
      height: 180,
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          renderSkeletonItem(
              height: 15, width: 80, margin: const EdgeInsets.only(top: 15, bottom: 15)),
          renderSkeletonItem(height: 15, margin: const EdgeInsets.only(bottom: 20)),
          renderSkeletonItem(height: 15, width: 80, margin: const EdgeInsets.only(bottom: 5)),
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.center,
              child: Text(label, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        renderCard(label: "Weather"),
        renderCard(label: "Solunar"),
      ],
    );
  }
}
