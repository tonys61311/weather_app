import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/time_weather/time_weather.dart';
import 'package:weather_app/utils/appLog.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const WeatherModel._(); // Add this line for custom methods

  const factory WeatherModel({
    required String datasetDescription,
    required List<Location> location,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  List<TimeWeather> toTimeWeather() {
    final Map<String, TimeWeather> timeWeatherMap = {};

    for (var loc in location) {
      // 获取所有的时间段
      final allTimes = loc.weatherElement.expand((e) => e.time).toSet();
      for (var time in allTimes) {
        if (!timeWeatherMap.containsKey(time.startTime)) {
          // 创建一个新的 TimeWeather 对象
          final timeWeather = TimeWeather(
            startTime: time.startTime,
            endTime: time.endTime,
            wx: _findParameter(loc, 'Wx', time.startTime),
            maxT: _findParameter(loc, 'MaxT', time.startTime),
            minT: _findParameter(loc, 'MinT', time.startTime),
            ci: _findParameter(loc, 'CI', time.startTime),
            pop: _findParameter(loc, 'PoP', time.startTime),
          );
          timeWeatherMap[time.startTime] = timeWeather;
        }
      }
    }
AppLog(timeWeatherMap.values.toList().length);
    return timeWeatherMap.values.toList();
  }

  Parameter _findParameter(Location loc, String elementName, String startTime) {
    final element = loc.weatherElement.firstWhere(
          (e) => e.elementName == elementName,
      orElse: () => WeatherElement(elementName: elementName, time: []),
    );
    final time = element.time.firstWhere(
          (t) => t.startTime == startTime,
      orElse: () => Time(
        startTime: startTime,
        endTime: '',
        parameter: Parameter(parameterName: '', parameterValue: '', parameterUnit: ''),
      ),
    );
    return time.parameter;
  }
}

@freezed
class Location with _$Location {
  const factory Location({
    required String locationName,
    required List<WeatherElement> weatherElement,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    required String elementName,
    required List<Time> time,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}

@freezed
class Time with _$Time {
  const factory Time({
    required String startTime,
    required String endTime,
    required Parameter parameter,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}

@freezed
class Parameter with _$Parameter {
  const factory Parameter({
    required String parameterName,
    String? parameterValue,
    String? parameterUnit,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, dynamic> json) =>
      _$ParameterFromJson(json);
}
