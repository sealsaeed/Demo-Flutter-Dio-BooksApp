import 'package:books_app/models/user.dart';
import 'package:dio/dio.dart';

class AuthService {
  final String _baseUrl = 'https://coded-books-api-auth.eapi.joincoded.com';

  final _dio = Dio();

  Future sign({required User user}) async {
    String token = "";
    try {
      final response = await _dio.post(_baseUrl + '/signup');

      response.data["token"];
    } catch (e) {
      throw e.toString();
    }
  }
}
