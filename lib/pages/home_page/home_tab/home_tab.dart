import 'package:flutter/material.dart';

import '../../../models/weather_model.dart';
import '../../../services/weather_service.dart';
import 'home_license.dart';
import 'home_weather.dart';
import 'home_weather_skeleton.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Weather? weather;
  final GlobalKey<RefreshIndicatorState> _indicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _indicatorKey.currentState?.show();
    });
  }

  Future<void> _refreshData() async {
    setState(() {
      weather = null;
    });
    weather = await getWeather();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: _indicatorKey,
        onRefresh: _refreshData,
        child: ListView(
          children: [
            HomeLicense(),
            weather != null
                ? HomeWeather(weather: weather!)
                : const HomeWeatherSkeleton(),
          ],
        ));
  }
}
