class Weather {

  final String cityName;
  final double temeprature;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.temeprature,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temeprature: json['main']['temp'].toDouble(), 
      mainCondition: json['weather'][0]['main'], 
      );
  }
}