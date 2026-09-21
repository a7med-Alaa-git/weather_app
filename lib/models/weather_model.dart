class WeatherModel {
  final String name;
  final DateTime date;
  final double maxTemp;
  final double minTemp;
  final String condition;
  final String image;
  final double temp;

  WeatherModel({
    required this.name,
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.condition,
    required this.image, required this.temp,
  });

  factory WeatherModel.fromJson(dynamic json) {
    return WeatherModel(
      name: json['location']['name'],
      date: json['location']['localtime'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
