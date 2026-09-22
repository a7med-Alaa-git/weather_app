import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  // ignore: strict_top_level_inference
  static WeatherCubit get(context) => BlocProvider.of(context);

  
}
