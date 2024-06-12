import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/enums/taiwan_city.dart';
import 'package:weather_app/models/weather/weather_model.dart';
import 'package:weather_app/utils/api_service.dart';
part 'weather_provider.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.data(WeatherModel weather, TaiwanCity city) = _Data;
  const factory WeatherState.error(String error) = _Error;
}

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier() : super(const WeatherState.initial());

  final Map<String, WeatherModel> _cache = {};
  final ApiService _apiService = ApiService();
  final now = DateTime.now();

  Future<void> getWeather(String locationName) async {

    try {
      final city = TaiwanCityExtension.fromDisplayName(locationName);
      if(city == null) {
        state = WeatherState.error('無此城市之天氣資料');
        return;
      }

      if (_cache.containsKey(locationName)) {
        final startTime = DateTime.parse(_cache[locationName]!.location.first.weatherElement.first.time.first.startTime);
        if (now.difference(startTime).inHours < 6) {
          state = WeatherState.data(_cache[locationName]!, city);
          return;
        }
      }

      state = const WeatherState.loading();

      final response = await _apiService.dio.get('/F-C0032-001', queryParameters: {
        'locationName': locationName,
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
        state = WeatherState.data(weather, city);
      } else {
        state = WeatherState.error('無法獲取天氣資料');
      }
    } catch (e) {
      state = WeatherState.error(e.toString());
    }
  }

  void goToInitialWidget() {
    state = const WeatherState.initial();
  }
}

final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) => WeatherNotifier());
