import 'package:flutter/material.dart';
import 'package:weather_app/core/api_call.dart';
import 'package:weather_app/screens/home/widgets/top_section.dart';
import 'package:weather_app/screens/home/widgets/value_container.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Place',
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: WidgetTopSection(),
          ),
          const Spacer(),
          const WidgetValuesContainer(),
          ElevatedButton(
              onPressed: () {
                weatherLoaded();
              },
              child: const Text('hi')),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class WeatherValues extends StatelessWidget {
  const WeatherValues({
    super.key,
    required this.type,
    required this.value,
  });
  final String type;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            type,
            style: const TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
