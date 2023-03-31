import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/core/api.dart';
import 'package:weather_app/models/weather_model.dart';
Weather? hi;
Future<dynamic> weatherValueCall() async {
  return await Dio().get(api);
}

Future<Weather> weatherLoaded() async {
  var jsonString = await weatherValueCall();
  final jsonResponse = json.decode(jsonString.toString());
  Weather weather = Weather.fromJson(jsonResponse);
  return weather;
}

// Future<Weather> weatherLoaded() async {
//   final response = await Dio()
//       .get('https://jsonplaceholder.typicode.com/albums/1');

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print(Weather.fromJson(jsonDecode(response.data.toString())));
//     return Weather.fromJson(jsonDecode(response.data.toString()));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
