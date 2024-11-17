import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  
  // api key
  final _weatherService = WeatherService('a8cc3a925e1b8f438a2431214dde6791')
  Weather? _weather;

  // fetch weather 
  _fetchWether() async {
    // get the current city
    String cityName = await _weatherService.getCurrentCity();

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }

    // errors
    catch (e) {
      print(e);
    }
  }

  // animations

  // initial state
  @override
  void initState() {
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return const Scaffold();

    _fetchWether();
  }
}