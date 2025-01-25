import 'package:flutter/material.dart';

class ForecastDaily extends StatelessWidget {
  final List<Map<String, String>> dailyForecast = [
    {'day': 'Monday', 'temp': '28°C', 'condition': 'Sunny'},
    {'day': 'Tuesday', 'temp': '30°C', 'condition': 'Rainy'},
    {'day': 'Wednesday', 'temp': '29°C', 'condition': 'Cloudy'},
    {'day': 'Thursday', 'temp': '27°C', 'condition': 'Sunny'},
    {'day': 'Friday', 'temp': '31°C', 'condition': 'Rainy'},
    {'day': 'Saturday', 'temp': '32°C', 'condition': 'Cloudy'},
    {'day': 'Sunday', 'temp': '28°C', 'condition': 'Sunny'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: dailyForecast.length,
        itemBuilder: (context, index) {
          final forecast = dailyForecast[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: Icon(
                _getWeatherIcon(forecast['condition']),
                size: 30,
                color: Colors.blueAccent,
              ),
              title: Text(
                forecast['day']!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                forecast['temp']!,
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                forecast['condition']!,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }

  IconData _getWeatherIcon(String? condition) {
    switch (condition) {
      case 'Sunny':
        return Icons.wb_sunny;
      case 'Rainy':
        return Icons.umbrella;
      case 'Cloudy':
        return Icons.cloud;
      default:
        return Icons.help_outline;
    }
  }
}
