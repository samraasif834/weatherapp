import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/screen2%20model.dart';

getkarachi(String city) async {
  try {
    final queryParameters = {
      'q': '$city',
      'appid': '6fed5a8a74b02be56f002ff4251f89b4'
    };
    var uri = Uri.https(
        "api.openweathermap.org", "/data/2.5/weather", queryParameters);
    var response = await http.get(uri);
    var jsondata = jsonDecode(response.body);
    

    print(jsondata);
    List<Screen2model> user1 = [];
    Screen2model user = Screen2model(
      cityname: jsondata['name'],
      temp: jsondata['main']['temp'],
      wind: jsondata['wind']['speed'],
      pressure: jsondata['main']['pressure'],
      humidity: jsondata['main']['humidity'],
      feelslike: jsondata['main']['feels_like'],
      degree: jsondata['wind']['deg'],
      // description: jsondata['weather']['description'],
    );
    user1.add(user);

    return user1;
  } catch (e) {
    final queryParameters = {
      'q': '$city',
      'appid': '6fed5a8a74b02be56f002ff4251f89b4'
    };
    var uri = Uri.https(
        "api.openweathermap.org", "/data/2.5/weather", queryParameters);
    var response = await http.get(uri);
    var jsondata = jsonDecode(response.body);
    print(jsondata);
    List<Screen2model> user1 = [];
    Screen2model user = Screen2model(
      cityname: jsondata['name'],
      temp: jsondata['main']['temp'],
      wind: jsondata['wind']['speed'],
      pressure: jsondata['main']['pressure'],
      humidity: jsondata['main']['humidity'],
      feelslike: jsondata['main']['feels_like'],
      degree: jsondata['wind']['deg'],
      // description: jsondata['weather']['description'],
    );
    user1.add(user);

    return user1;
  }
}
