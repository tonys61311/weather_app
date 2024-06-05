import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/utils/api_service.dart';
import 'package:weather_app/widgets/loading_widget.dart';
import 'package:weather_app/widgets/weather_widget.dart';
import 'package:weather_app/widgets/error_widget.dart';
import 'package:weather_app/widgets/initial_widget.dart';
import 'package:weather_app/providers/weather/weather_provider.dart';

class HomePage extends ConsumerWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: '請輸入城市名稱',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () async{
                    ref.read(weatherProvider.notifier).getWeather(_controller.text);
                  },
                  child: Text('確認'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: weatherState.when(
                    initial: () => InitialWidget(),
                    loading: () => LoadingWidget(),
                    data: (weather) => WeatherWidget(weather: weather),
                    error: (error) => ErrorDisplayWidget(message: error),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}