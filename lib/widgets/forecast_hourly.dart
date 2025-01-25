import 'package:flutter/material.dart';

class ForecastHourly extends StatelessWidget {
  const ForecastHourly({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> hourlyData = [
      {"time": "10:00 AM", "temp": "28°C", "condition": "Sunny"},
      {"time": "11:00 AM", "temp": "30°C", "condition": "Cloudy"},
      {"time": "12:00 PM", "temp": "32°C", "condition": "Rainy"},
      {"time": "1:00 PM", "temp": "31°C", "condition": "Sunny"},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hourlyData.length,
        itemBuilder: (context, index) {
          final item = hourlyData[index];
          return Container(
            width: 100,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item["time"]!, style: const TextStyle(fontSize: 16)),
                Text(item["temp"]!, style: const TextStyle(fontSize: 20)),
                Text(item["condition"]!, style: const TextStyle(fontSize: 14)),
              ],
            ),
          );
        },
      ),
    );
  }
}
