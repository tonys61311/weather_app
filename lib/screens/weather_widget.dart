import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/enums/weather_type.dart';
import 'package:weather_app/models/time_weather/time_weather.dart';
import 'package:weather_app/models/weather/weather_model.dart';
import 'package:weather_app/utils/widget_extension.dart';
import 'package:weather_app/utils/appLog.dart';
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
          Expanded(flex: 3, child: _buildCurrentWeather()),
          SizedBox(height: 20),
          _buildForecast(),
          SizedBox(height: 20),
          Expanded(flex: 4, child: _buildRainChanceChart()),
        ],
      ),
    );
  }

  // 建立當前天氣顯示的 widget
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

  // 建立天氣預報的 widget
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
// 建立降雨機率圖表的 widget
  Widget _buildRainChanceChart() {
    return Column(
      children: [
        Text(
          '降雨機率',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(height: 10),
        Expanded(
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 25,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      final index = value.toInt();
                      final startTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(weatherList[index].startTime);
                      final now = DateTime.now();
                      final formattedTime = DateFormat('ha').format(startTime);
                      String label;

                      if (DateFormat('yyyy-MM-dd').format(startTime) == DateFormat('yyyy-MM-dd').format(now)) {
                        label = '今天 $formattedTime';
                      } else if (DateFormat('yyyy-MM-dd').format(startTime) == DateFormat('yyyy-MM-dd').format(now.add(Duration(days: 1)))) {
                        label = '明天 $formattedTime';
                      } else if (DateFormat('yyyy-MM-dd').format(startTime) == DateFormat('yyyy-MM-dd').format(now.add(Duration(days: 2)))) {
                        label = '後天 $formattedTime';
                      } else {
                        label = DateFormat('MMMd').format(startTime) + ' ' + formattedTime;
                      }

                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: index == 0 ? 16.0 : 8.0,
                            right: index == weatherList.length - 1 ? 40.0 : 8.0,
                          ),
                          child: Text(
                            label,
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 50,
                    getTitlesWidget: (value, meta) {
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: Text(
                          '${value.toInt()}%',
                          style: TextStyle(color: Colors.white70),
                        ),
                      );
                    },
                  ),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              borderData: FlBorderData(show: false),
              minX: 0,
              maxX: (weatherList.length - 1).toDouble(),
              minY: 0,
              maxY: 100,
              lineBarsData: [
                LineChartBarData(
                  spots: weatherList.asMap().entries.map((entry) {
                    final index = entry.key;
                    final weather = entry.value;
                    return FlSpot(index.toDouble(), double.parse(weather.pop.parameterName));
                  }).toList(),
                  isCurved: true,
                  color: Colors.blue,
                  barWidth: 4,
                  belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.3)),
                ),
              ],
            ),
          ),
        ),
      ],
    ).addGreyBox(padding: EdgeInsets.only(top: 16, bottom: 16, right: 20));
  }

  bool _isDayTime(String startTime) {
    final time = DateTime.parse(startTime);
    final hour = time.hour;
    return hour >= 6 && hour < 18;
  }
}
