import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app/core/api.dart';
import 'package:weather_app/models/weather_model.dart';

Future<dynamic> weatherValueCall() async {
  return await Dio().get(api);
}

Future weatherLoaded() async {
  var jsonString = await weatherValueCall();
  final jsonResponse = json.decode(jsonString.toString());
  Weather weather = Weather.fromJson(jsonResponse);
  print(weather.location!.region);

  // final Response response =
  //         await Dio(BaseOptions()).get(api);
  //     if (response.statusCode == 200 || response.statusCode == 201) {
  //       final weather = (response.data['results'] as List).map((e) {
  //         return Weather.fromJson(e);
  //       }).toList();}
}
