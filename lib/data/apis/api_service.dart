import 'package:dio/dio.dart';

import '../../utils/constances/strings.dart';

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
