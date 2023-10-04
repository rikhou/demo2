import 'package:dio/dio.dart';

const String apiKey = '1423c70493d248528de23809211305';

getWeatherData(double latitude, double longitude, int days) async {
  Dio dio = Dio();

  String url =
      'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$latitude,$longitude&days=$days&aqi=no&alerts=no';
  print(url);
  Response response = await dio.get(url);
  return response.data;
}
