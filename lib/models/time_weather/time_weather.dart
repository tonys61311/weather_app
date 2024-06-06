import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/weather_model.dart';

part 'time_weather.freezed.dart';
part 'time_weather.g.dart';

@freezed
class TimeWeather with _$TimeWeather {
  const factory TimeWeather({
    required String startTime,
    required String endTime,
    required Parameter wx,
    required Parameter maxT,
    required Parameter minT,
    required Parameter ci,
    required Parameter pop,
  }) = _TimeWeather;

  factory TimeWeather.fromJson(Map<String, dynamic> json) => _$TimeWeatherFromJson(json);
}
