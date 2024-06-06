import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/enums/taiwanCity.dart';
import 'package:weather_app/providers/weather/weather_provider.dart';
import 'package:weather_app/widgets/city_widget.dart';

class InitialWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherProviderNotifier = ref.read(weatherProvider.notifier);
    final taiwanCities = TaiwanCity.values;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
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
      ),
    );
  }
}
