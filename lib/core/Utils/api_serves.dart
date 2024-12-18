import 'package:dio/dio.dart';

class ApiServes {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiServes(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
