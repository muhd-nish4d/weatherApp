// class Weather {
//   String? name;
//   String? region;
//   String? country;
//   String? tempC;
//   String? windKph;
//   String? humidity;
//   String? cloud;

//   Weather(
//       {this.name,
//       this.region,
//       this.country,
//       this.tempC,
//       this.windKph,
//       this.humidity,
//       this.cloud});
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//         name: json['name'],
//         region: json['region'],
//         country: json['country'],
//         tempC: json['temp_c'],
//         windKph: json['wind_kph'],
//         humidity: json['humidity'],
//         cloud: json['cloud']);
//   }
// }
class Weather {
  Current? current;
  Location? location;

  Weather({this.location, this.current});

  factory Weather.fromJson(Map<String, dynamic> parsedJson) {
    return Weather(
      location: Location.fromJson(parsedJson['location']),
      current: Current.fromJson(
        parsedJson['current'],
      ),
    );
  }
}

class Location {
  String? name;
  String? region;
  String? country;
  // Property property;

  Location({this.name, this.region, this.country});

  factory Location.fromJson(Map<String, dynamic> parsedJson) {
    return Location(
      name: parsedJson['name'],
      region: parsedJson['region'],
      country: parsedJson['country'],
      // property: Property.fromJson(parsedJson['property'])
    );
  }
}

class Current {
  double? tempC;
  double? windKph;
  int? humidity;
  int? cloud;
  // double width;
  // double breadth;

  Current({this.tempC, this.windKph, this.humidity, this.cloud});

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
        tempC: json['temp_c'],
        windKph: json['wind_kph'],
        humidity: json['humidity'],
        cloud: json['cloud']);
  }
}
