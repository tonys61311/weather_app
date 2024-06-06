import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/weather/weather_model.dart';
import 'package:weather_app/utils/api_service.dart';
import 'package:weather_app/utils/appLog.dart';

part 'weather_provider.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.data(WeatherModel weather) = _Data;
  const factory WeatherState.error(String error) = _Error;
}

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier() : super(const WeatherState.initial());

  final Map<String, WeatherModel> _cache = {};
  final ApiService _apiService = ApiService();

  Future<void> getWeather(String locationName) async {
    if (_cache.containsKey(locationName)) {
      state = WeatherState.data(_cache[locationName]!);
      return;
    }

    state = const WeatherState.loading();

    try {
      final response = await _apiService.dio.get('/F-C0032-001', queryParameters: {
        'locationName': locationName.isEmpty ? '臺北市' : locationName,
      });

      if (response.statusCode == 200) {
        final weather = WeatherModel.fromJson(response.data['records']);
        if (weather.location.isEmpty) {
          state = WeatherState.error('無此城市之天氣資料');
          return;
        }

        final currentWeather = weather.location.first.weatherElement.first.time.first;
        final parameterValue = currentWeather.parameter.parameterValue;
        if (parameterValue == null || parameterValue.isEmpty) {
          state = WeatherState.error('Invalid weather data');
          return;
        }

        _cache[locationName] = weather;
        state = WeatherState.data(weather);
      } else {
        state = WeatherState.error('無法獲取天氣資料');
      }
    } catch (e) {
      state = WeatherState.error(e.toString());
    }
  }
}

final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) => WeatherNotifier());
