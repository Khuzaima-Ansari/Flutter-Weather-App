// ignore_for_file: prefer_typing_uninitialized_variables

class Weather {
  var cityName;
  var icon;
  var condition;
  var temp;
  var wind;
  var humidity;
  var windDir;
  var gust;
  var uv;
  var pressure;
  var pricipe;
  var lastUpdate;
  Weather({
    required this.cityName,
    required this.icon,
    required this.condition,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.windDir,
    required this.gust,
    required this.uv,
    required this.pressure,
    required this.pricipe,
    required this.lastUpdate,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['location']['name'];
    icon = json['current']['condition']['icon'];
    condition = json['current']['condition']['text'];
    temp = json['current']['temp_c'];
    wind = json['current']['wind_kph'];
    humidity = json['current']['humidity'];
    windDir = json['current']['wind_dir'];
    pressure = json['current']['pressure_mb'];
    pricipe = json['current']['pressure_mm'];
    lastUpdate = json['current']['last_updated'];
    gust = json['current']['gust_kph'];
    uv = json['current']['uv'];
  }
}
