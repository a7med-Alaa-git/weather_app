import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: BlocConsumer<WeatherCubit, WeatherStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Weather App', style: TextStyle(color: Colors.white)),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SearchView();
                        },
                      ),
                    );
                  },
                  icon: Icon(Icons.search, color: Colors.white, size: 28),
                ),
              ],
              backgroundColor: Colors.blue,
            ),
            body: WeatherInfo(),
          );
        },
      ),
    );
  }
}
