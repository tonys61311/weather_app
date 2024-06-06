import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/enums/weather_type.dart';
import 'package:weather_app/models/time_weather/time_weather.dart';
import 'package:weather_app/models/weather/weather_model.dart';
import 'package:weather_app/utils/WidgetExtension.dart';
import 'package:weather_app/widgets/weather_detail.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherModel weatherModel;
  late final List<TimeWeather> weatherList;

  WeatherWidget({required this.weatherModel, Key? key}) : super(key: key) {
    weatherList = weatherModel.toTimeWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(flex: 2, child: _buildCurrentWeather()),
          SizedBox(height: 20),
          _buildForecast(),
          SizedBox(height: 20),
          Expanded(flex: 2, child: _buildRainChanceChart()),
        ],
      ),
    );
  }

  Widget _buildCurrentWeather() {
    final currentWeather = weatherList.first;
    final isDayTime = _isDayTime(currentWeather.startTime);
    final weatherType = WeatherTypeExtension.fromCode(int.parse(currentWeather.wx.parameterValue ?? '0'));
    final iconPath = weatherType.getIconPath(isDayTime);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SvgPicture.asset(iconPath).addExpanded(flex: 4),
                SizedBox(height: 10),
                Text(currentWeather.wx.parameterName)
                    .addFittedBox()
                    .addExpanded(),
              ],
            ).addExpanded(flex: 1),
            SizedBox(width: 10),
            Text(
              weatherModel.location.first.locationName,
            )
                .addFittedBox()
                .addContainer(padding: EdgeInsets.all(15))
                .addExpanded(),
          ],
        ).addExpanded(flex: 2),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            WeatherDetail(key: ValueKey('1'), title: '最高溫', value: '${currentWeather.maxT.parameterName}°C'),
            WeatherDetail(key: ValueKey('2'), title: '最低溫', value: '${currentWeather.minT.parameterName}°C'),
            WeatherDetail(key: ValueKey('3'), title: '降雨率', value: '${currentWeather.pop.parameterName}%'),
          ],
        ),
      ],
    ).addGreyBox();
  }

  Widget _buildForecast() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(weatherList.length, (index) {
        final weather = weatherList[index];
        final isDayTime = _isDayTime(weather.startTime);
        final weatherType = WeatherTypeExtension.fromCode(int.parse(weather.wx.parameterValue ?? '0'));
        final iconPath = weatherType.getIconPath(isDayTime);

        return WeatherDetail(
          key: ValueKey(index),
          title: DateFormat('MM/dd HH:mm').format(DateTime.parse(weather.startTime)),
          value: '${weather.maxT.parameterName}°/${weather.minT.parameterName}°',
          iconPath: iconPath,
          footer: weather.ci.parameterName,
        );
      }),
    ).addGreyBox();
  }

  Widget _buildRainChanceChart() {
    return Column(
      children: [
        Text(
          'Chance of Rain',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 10),
        Container(
          height: 200,
          child: Center(
            child: Text(
              'Rain Chance Chart',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
      ],
    ).addGreyBox();
  }

  bool _isDayTime(String startTime) {
    final time = DateTime.parse(startTime);
    final hour = time.hour;
    return hour >= 6 && hour < 18;
  }
}
