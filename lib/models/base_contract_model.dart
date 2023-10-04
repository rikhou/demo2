class BaseContract {
  DateFormats? dateFormats;
  Weather? weather;

  BaseContract({this.dateFormats, this.weather});

  BaseContract.fromJson(Map<String, dynamic> json) {
    dateFormats = json['dateFormats'] != null
        ? new DateFormats.fromJson(json['dateFormats'])
        : null;
    weather =
        json['weather'] != null ? new Weather.fromJson(json['weather']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dateFormats != null) {
      data['dateFormats'] = this.dateFormats!.toJson();
    }
    if (this.weather != null) {
      data['weather'] = this.weather!.toJson();
    }
    return data;
  }
}

class DateFormats {
  String? hour;

  DateFormats({this.hour});

  DateFormats.fromJson(Map<String, dynamic> json) {
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hour'] = this.hour;
    return data;
  }
}

class Weather {
  bool? fahrenheit;
  String? apiKey;
  String? defaultCityName;
  List<double>? defaultCityGps;

  Weather(
      {this.fahrenheit,
      this.apiKey,
      this.defaultCityName,
      this.defaultCityGps});

  Weather.fromJson(Map<String, dynamic> json) {
    fahrenheit = json['fahrenheit'];
    apiKey = json['apiKey'];
    defaultCityName = json['defaultCityName'];
    defaultCityGps = json['defaultCityGps'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fahrenheit'] = this.fahrenheit;
    data['apiKey'] = this.apiKey;
    data['defaultCityName'] = this.defaultCityName;
    data['defaultCityGps'] = this.defaultCityGps;
    return data;
  }
}
