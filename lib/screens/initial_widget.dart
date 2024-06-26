import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/enums/taiwan_city.dart';
import 'package:weather_app/providers/weather/weather_provider.dart';
import 'package:weather_app/widgets/city_widget.dart';

class InitialWidget extends ConsumerWidget {
  final taiwanCities = TaiwanCity.values;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherProviderNotifier = ref.read(weatherProvider.notifier);

    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
      itemCount: taiwanCities.length,
      itemBuilder: (context, index) {
        final city = taiwanCities[index];
        return CityWidget(
          city: city,
          onTap: () => weatherProviderNotifier.getWeather(city.displayName),
        );
      },
    );
  }
}
