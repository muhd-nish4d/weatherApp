import 'package:flutter/material.dart';
import 'package:weather_app/screens/home/widgets/top_section.dart';
import 'package:weather_app/screens/home/widgets/value_container.dart';

int? timeNow;

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    timeNow = DateTime.now().hour;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   centerTitle: true,
      //   title: const Text(
      //     'Weather',
      //     style: TextStyle(
      //       color: Colors.orange,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 30,
      //     ),
      //   ),
      // ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: timeNow! >= 6 && 18 >= timeNow!
                ? const AssetImage('lib/assets/image/4046908.jpg')
                : const AssetImage('lib/assets/image/night_image.jpg')
          ),
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: WidgetTopSection(),
            ),
            Spacer(),
            WidgetValuesContainer(),
            SizedBox(
              height: 20,
            )
          ],
        ),
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
            style:  TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: timeNow! >= 6 && 18 >= timeNow!?Colors.blue:Colors.white),
          ),
          const Spacer(),
          Text(
            value,
            style: 
             TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: timeNow! >= 6 && 18 >= timeNow!?Colors.blue:Colors.white),
          )
        ],
      ),
    );
  }
}
