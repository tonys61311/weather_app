import 'package:flutter/material.dart';
import 'package:weather_app/models/weather/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherModel weather;

  WeatherWidget({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Location: ${weather.datasetDescription}'),
      ],
    );
  }
}
