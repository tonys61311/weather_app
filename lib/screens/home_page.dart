import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/screens/loading_widget.dart';
import 'package:weather_app/screens/weather_widget.dart';
import 'package:weather_app/screens/error_widget.dart';
import 'package:weather_app/screens/initial_widget.dart';
import 'package:weather_app/providers/weather/weather_provider.dart';
import 'package:weather_app/widgets/custom_text_field.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherProvider);

    return Scaffold(
      backgroundColor: Colors.grey[850],
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: _controller,
                        labelText: '請輸入城市名稱',
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () async {
                        ref.read(weatherProvider.notifier).getWeather(_controller.text);
                      },
                      child: Text('確認'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    child: Center(
                      child: weatherState.when(
                        initial: () => InitialWidget(),
                        loading: () => LoadingWidget(),
                        data: (weather) => WeatherWidget(weatherModel: weather),
                        error: (error) => ErrorDisplayWidget(
                            message: error,
                            clickButton: () {
                              ref.read(weatherProvider.notifier).goToInitialWidget();
                            }
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
