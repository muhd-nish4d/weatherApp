import 'package:flutter/material.dart';

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
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                spreadRadius: .1,
                blurRadius: 50,
                color: Colors.amber,
                offset: Offset(0, 20))
          ],
          color: Colors.orange.withOpacity(.8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          WeatherValues(type: 'Wind', value: '9/kph'),
          WeatherValues(type: 'Humidity', value: '9'),
          WeatherValues(type: 'UV', value: '9'),
        ],
      ),
    );
  }
}
