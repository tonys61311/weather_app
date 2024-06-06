enum WeatherType {
  thunderstorm,
  clear,
  cloudyFog,
  cloudy,
  fog,
  partiallyClearWithRain,
  snowing,
}

extension WeatherTypeExtension on WeatherType {
  static const weatherTypes = {
    WeatherType.thunderstorm: [15, 16, 17, 18, 21, 22, 33, 34, 35, 36, 41],
    WeatherType.clear: [1],
    WeatherType.cloudyFog: [25, 26, 27, 28],
    WeatherType.cloudy: [2, 3, 4, 5, 6, 7],
    WeatherType.fog: [24],
    WeatherType.partiallyClearWithRain: [
      8, 9, 10, 11, 12, 13, 14, 19, 20, 29, 30, 31, 32, 38, 39,
    ],
    WeatherType.snowing: [23, 37, 42],
  };

  static WeatherType fromCode(int weatherCode) {
    return weatherTypes.entries
        .firstWhere(
            (entry) => entry.value.contains(weatherCode),
        orElse: () => MapEntry(WeatherType.clear, [1]))
        .key;
  }

  String getIconPath(bool isDayTime) {
    final timeOfDay = isDayTime ? 'day' : 'night';
    final name = this.name.replaceAllMapped(RegExp(r'[A-Z]'), (match) => '-${match.group(0)!.toLowerCase()}');
    return 'assets/images/weather/${timeOfDay}-${name}.svg';
  }
}
