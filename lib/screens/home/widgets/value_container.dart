import 'package:flutter/material.dart';
import 'package:weather_app/core/api_call.dart';
import 'package:weather_app/models/weather_model.dart';

import '../home_screen.dart';

class WidgetValuesContainer extends StatelessWidget {
  const WidgetValuesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .9,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // boxShadow: const [
          //   BoxShadow(
          //       spreadRadius: .1,
          //       blurRadius: 50,
          //       color: Colors.grey,
          //       offset: Offset(0, 20))
          // ],
          color: Colors.transparent.withOpacity(0.06)),
      child: FutureBuilder<Weather>(
        future: weatherLoaded(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (snapshot.hasError) {
            return const Text('Error while getting data');
          } else {
            final newValues = snapshot.data!.current;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeatherValues(type: 'Wind', value: '${newValues!.windKph}/kph'),
                WeatherValues(
                    type: 'Humidity', value: newValues.humidity.toString()),
                WeatherValues(type: 'Cloud', value: newValues.cloud.toString()),
              ],
            );
          }
        },
      ),
    );
  }
}
