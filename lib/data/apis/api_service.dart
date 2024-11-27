import 'package:bloc_training_app/utils/constances/strings.dart';
import 'package:dio/dio.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    BaseOptions options = BaseOptions(
      baseUrl: KBaseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    );
    
    _dio = Dio(options);
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$endPoint');

    return response.data;
  }
}
