import 'package:dio/dio.dart';
import 'package:weather_app/core/api_consumer.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio});

  @override
  Future<dynamic> get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          throw UnimplementedError();
        case DioExceptionType.sendTimeout:
          throw UnimplementedError();
        case DioExceptionType.receiveTimeout:
          // TODO: Handle this case.
          throw UnimplementedError();
        case DioExceptionType.badCertificate:
          // TODO: Handle this case.
          throw UnimplementedError();

        case DioExceptionType.cancel:
          // TODO: Handle this case.
          throw UnimplementedError();
        case DioExceptionType.connectionError:
          // TODO: Handle this case.
          throw UnimplementedError();
        case DioExceptionType.unknown:
          // TODO: Handle this case.
          throw UnimplementedError();
        case DioExceptionType.transformTimeout:
          // TODO: Handle this case.
          throw UnimplementedError();
        case DioExceptionType.badResponse:
          // TODO: Handle this case.
          throw UnimplementedError();
      }
    }
  }
}
