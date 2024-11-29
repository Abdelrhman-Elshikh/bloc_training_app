import 'package:bloc_training_app/utils/constances/strings.dart';
import 'package:dio/dio.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    _dio = Dio();
  }

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$KBaseUrl$endPoint');

    return response.data;
  }
}
