import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/WidgetExtension.dart';

class WeatherDetail extends StatelessWidget {
  final String title;
  final String value;
  final String? iconPath;
  final String? footer;

  const WeatherDetail({
    Key? key,
    required this.title,
    required this.value,
    this.iconPath,
    this.footer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        SizedBox(height: 5),
        if (iconPath != null)
          SvgPicture.asset(iconPath!, height: 24),
        if (iconPath != null) SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        if (footer != null) SizedBox(height: 5),
        if (footer != null)
          Text(
            footer!,
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
      ],
    );
  }
}
