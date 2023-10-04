import 'package:intl/intl.dart';

import '../models/weather_model.dart';
import '../network/weather_api.dart';
import 'base_contract_service.dart';

// getLocation() async {
//   Location location = Location();

//   bool serviceEnabled = await location.serviceEnabled();
//   if (serviceEnabled) {
//     var data = await location.getLocation();
//     return {"latitude": data.latitude, "longitude": data.longitude};
//   }
//   List<double> city =
//       baseContract['weather']!['defaultCityGps'] as List<double>;
//   return {"latitude": city[0], "longitude": city[1]};
// }

Future<Weather> getWeather() async {
  // var locationData = await getLocation();
  // print(locationData);
  var baseContract = await getBaseContractJson();
  var defaultLocation = baseContract.weather!.defaultCityGps!;
  var apiResult =
      await getWeatherData(defaultLocation[1], defaultLocation[0], 5);
  var data = convertData(apiResult, baseContract.weather!.fahrenheit!,
      baseContract.dateFormats?.hour);
  return data;
}

Weather convertData(result, bool fahrenheit, String? hour) {
  Weather weatherData = Weather();
  weatherData.locationName = result["location"]?["name"];
  var astro = result["forecast"]?["forecastday"][0]?["astro"];
  var sunrise = astro?['sunrise'];
  List<String> strList = sunrise.split(" ");
  DateTime time = DateTime.parse('1970-01-01 ${strList[0]}:00Z');
  weatherData.sunrise = DateFormat(hour).format(time);
  weatherData.sunriseAmPm = strList[1];
  var sunset = astro?['sunset'];
  List<String> strSunsetList = sunset.split(" ");
  DateTime time1 = DateTime.parse('1970-01-01 ${strSunsetList[0]}:00Z');
  weatherData.sunset = DateFormat(hour).format(time1);
  weatherData.sunsetAmPm = strSunsetList[1];
  weatherData.fahrenheit = fahrenheit;
  var current = result["current"];
  weatherData.temperature =
      fahrenheit ? current!["temp_f"] : current!['temp_c'];
  weatherData.conditionText = current?['condition']?['text'];

  return weatherData;
}
