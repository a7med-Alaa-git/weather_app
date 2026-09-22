import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.name,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'Updated at ${weatherModel.date}',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1638886301/EducationHub/photos/lightning-bolts.jpg',
                ),
              ),
              Text(
                weatherModel.temp.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp : ${weatherModel.maxTemp}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Mintemp : ${weatherModel.minTemp}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          Text(
            weatherModel.condition,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
