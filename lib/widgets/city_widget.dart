import 'package:flutter/material.dart';
import 'package:weather_app/enums/taiwan_city.dart';

class CityWidget extends StatelessWidget {
  final TaiwanCity city;
  final VoidCallback onTap;

  const CityWidget({required this.city, required this.onTap, Key? key}) : super(key: key);

  Future<void> _preloadImage(BuildContext context, String assetPath) async {
    await precacheImage(AssetImage(assetPath), context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _preloadImage(context, city.imgPath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return LayoutBuilder(
            builder: (context, constraints) {
              double fontSize = constraints.maxHeight / 4;
              return GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(city.imgPath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        city.displayName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
