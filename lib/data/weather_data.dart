import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherData {
  static const String apiKey = "b78c787a208abdb1898421acf08ad040";
  static const String baseUrl = "https://api.openweathermap.org/data/2.5";

  static Future<Map<String, dynamic>?> fetchCurrentWeather(String city) async {
    final url = "$baseUrl/weather?q=$city&appid=$apiKey&units=metric";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return {
        'temp': data['main']['temp'],
        'description': data['weather'][0]['description'],
      };
    } else {
      return null;
    }
  }
}
