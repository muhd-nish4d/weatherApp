import 'package:flutter/material.dart';
import 'package:weather_app/core/api_call.dart';

import '../../../models/weather_model.dart';
import '../home_screen.dart';

class WidgetTopSection extends StatefulWidget {
  const WidgetTopSection({
    super.key,
  });

  @override
  State<WidgetTopSection> createState() => _WidgetTopSectionState();
}

class _WidgetTopSectionState extends State<WidgetTopSection> {
  late Future<Weather> futureWeather;
  @override
  void initState() {
    futureWeather = weatherLoaded();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   weatherLoaded();
    // });
    return Column(
      children: [
        timeNow! >= 6 && 18 >= timeNow!?
        Image.network(
            'https://cdn-icons-png.flaticon.com/128/1040/1040443.png'):
        Image.asset('lib/assets/icons/moon.png',width: 100,),
        FutureBuilder<Weather>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Row(
                children: const [
                  Spacer(),
                  CircularProgressIndicator(strokeWidth: 2),
                  Spacer()
                ],
              );
            } else if (snapshot.hasError) {
              return Text('Error : ${snapshot.error}');
            } else {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${snapshot.data!.current!.tempC!.round()}',
                        style: const TextStyle(fontSize: 70),
                      ),
                      const Text(
                        '○',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text('c',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))
                    ],
                  ),
                  Text(snapshot.data!.location!.name!),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      '${snapshot.data!.location!.region!}, ${snapshot.data!.location!.country!}'),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}
