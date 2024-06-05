// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      datasetDescription: json['datasetDescription'] as String,
      location: (json['location'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'datasetDescription': instance.datasetDescription,
      'location': instance.location,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      locationName: json['locationName'] as String,
      weatherElement: (json['weatherElement'] as List<dynamic>)
          .map((e) => WeatherElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'locationName': instance.locationName,
      'weatherElement': instance.weatherElement,
    };

_$_WeatherElement _$$_WeatherElementFromJson(Map<String, dynamic> json) =>
    _$_WeatherElement(
      elementName: json['elementName'] as String,
      time: (json['time'] as List<dynamic>)
          .map((e) => Time.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherElementToJson(_$_WeatherElement instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'time': instance.time,
    };

_$_Time _$$_TimeFromJson(Map<String, dynamic> json) => _$_Time(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      parameter: Parameter.fromJson(json['parameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TimeToJson(_$_Time instance) => <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'parameter': instance.parameter,
    };

_$_Parameter _$$_ParameterFromJson(Map<String, dynamic> json) => _$_Parameter(
      parameterName: json['parameterName'] as String,
      parameterValue: json['parameterValue'] as String?,
      parameterUnit: json['parameterUnit'] as String?,
    );

Map<String, dynamic> _$$_ParameterToJson(_$_Parameter instance) =>
    <String, dynamic>{
      'parameterName': instance.parameterName,
      'parameterValue': instance.parameterValue,
      'parameterUnit': instance.parameterUnit,
    };
