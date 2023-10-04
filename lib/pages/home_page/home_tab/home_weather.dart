import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common_widget/CustomCard.dart';
import '../../../models/weather_model.dart';

class HomeWeather extends StatelessWidget {
  final Weather weather;
  const HomeWeather({super.key, required this.weather});

  renderSolunar(String time, bool isSunrise, String ampm) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            isSunrise ? Icons.arrow_upward : Icons.arrow_downward,
            size: 18,
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(width: 2),
              Text(ampm, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double temperature = weather.temperature;
    String locationName = weather.locationName;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 25, bottom: 10),
          child: const Text(
            "Discovery",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCard(
              height: 180,
              width: 165,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(locationName, style: const TextStyle(fontSize: 14.0)),
                      const SizedBox(width: 5),
                      const Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 12,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$temperature',
                            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                        Text(weather.fahrenheit ? '° F' : '° C',
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  Text(weather.conditionText, style: const TextStyle(fontSize: 14.0)),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 15),
                      alignment: Alignment.center,
                      child: const Text('Weather',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            CustomCard(
              height: 180,
              width: 165,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(locationName, style: const TextStyle(fontSize: 14.0)),
                      const SizedBox(width: 5),
                      const Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      renderSolunar(weather.sunrise, true, weather.sunriseAmPm),
                      renderSolunar(weather.sunset, false, weather.sunsetAmPm),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 15),
                      alignment: Alignment.center,
                      child: const Text('Solunar',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500))),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
