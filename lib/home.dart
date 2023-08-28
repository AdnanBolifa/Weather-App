import 'dart:ui';
import 'package:flutter/material.dart';

import 'forecast.dart';
import 'additional_info.item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "300° F",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          Icon(Icons.cloud, size: 64),
                          SizedBox(height: 16),
                          Text(
                            "Rain",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Weather forecast",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            //forecast cards
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                      time: '03:32', icon: Icons.cloud, value: '300°F'),
                  HourlyForecastItem(
                      time: '03:32', icon: Icons.cloud, value: '300°F'),
                  HourlyForecastItem(
                      time: '03:32', icon: Icons.cloud, value: '300°F'),
                  HourlyForecastItem(
                      time: '03:32', icon: Icons.cloud, value: '300°F'),
                  HourlyForecastItem(
                      time: '03:32', icon: Icons.cloud, value: '300°F'),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //Additional info
            const Text(
              "Additional information",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoItem(
                  icon: Icons.water_drop,
                  lable: "Humidity",
                  value: '81',
                ),
                AdditionalInfoItem(
                  icon: Icons.air,
                  lable: "Wind Speed",
                  value: '7.67',
                ),
                AdditionalInfoItem(
                  icon: Icons.beach_access,
                  lable: "Pressure",
                  value: '1006',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
