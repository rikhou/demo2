import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My License",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            TextButton(onPressed: () {}, child: Text("View All Licenses"))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(25),
                                offset: const Offset(2, 2),
                                blurRadius: 4,
                              ),
                            ],
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Text("${currentIndex + 1} of 5"),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 5),
          child: const Text(
            "Discovery",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 5,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text("ddd"),
                height: 200,
                width: 150,
              ),
            ),
            Card(
              elevation: 5,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text("ddd"),
                height: 200,
                width: 150,
              ),
            )
          ],
        )
      ],
    );
  }
}
