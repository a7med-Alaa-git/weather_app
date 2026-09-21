import 'package:flutter/material.dart';

class NoWeatherInfoBody extends StatelessWidget {
  const NoWeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('There Is No Weather 😔', style: TextStyle(fontSize: 25)),
            Text('Start Searching Now 🔍', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
