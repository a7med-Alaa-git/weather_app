import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/api_consumer.dart';
import 'package:weather_app/core/end_points.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/error/exceptions.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  final ApiConsumer api;

  WeatherCubit({required this.api}) : super(WeatherInitialState());

  static WeatherCubit get(BuildContext context) => BlocProvider.of(context);
  WeatherModel? weatherModel;

  Future<WeatherModel> getWeather(String value) async {
    try {
      emit(WeatherLoadingState());

      final response = await api.get(
        EndPoints.baseUrl,
        queryParameters: {
          ApiKeys.apiKey: ApiKeys.apiKeyValue,
          ApiKeys.searchKey: value,
        },
      );

      emit(WeatherSuccessState());

      weatherModel = WeatherModel.fromJson(response);
    } on ServerException catch (e) {
      emit(WeatherFailureState(message: e.errorModel.errorMessage));
    }
    return weatherModel!;
  }
}
