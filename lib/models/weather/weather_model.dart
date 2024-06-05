import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required String datasetDescription,
    required List<Location> location,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
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
