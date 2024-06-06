// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeWeather _$$_TimeWeatherFromJson(Map<String, dynamic> json) =>
    _$_TimeWeather(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      wx: Parameter.fromJson(json['wx'] as Map<String, dynamic>),
      maxT: Parameter.fromJson(json['maxT'] as Map<String, dynamic>),
      minT: Parameter.fromJson(json['minT'] as Map<String, dynamic>),
      ci: Parameter.fromJson(json['ci'] as Map<String, dynamic>),
      pop: Parameter.fromJson(json['pop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeWeatherToJson(_$_TimeWeather instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'wx': instance.wx,
      'maxT': instance.maxT,
      'minT': instance.minT,
      'ci': instance.ci,
      'pop': instance.pop,
    };
