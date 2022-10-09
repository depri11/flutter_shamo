import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/user_model.dart';

class AuthService {
  String baseUrl = 'http://192.168.1.6:8001/api/v1';

  Future<UserModel?> register(
    String? fullname,
    String? username,
    String? email,
    String? password,
  ) async {
    try {
      var url = Uri.parse('$baseUrl/register');
      var headers = {'Content-Type': 'application/json'};
      var body = jsonEncode({
        'fullname': fullname,
        'username': username,
        'email': email,
        'password': password,
      });

      var response = await http.post(
        url,
        headers: headers,
        body: body,
      );

      print(response.body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        UserModel user = UserModel.fromJson(data['data']);
        user.token = 'Bearer ' + data['other']['token'];
        return user;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<UserModel?> login(
    String? email,
    String? password,
  ) async {
    try {
      var url = Uri.parse('$baseUrl/login');
      var headers = {'Content-Type': 'application/json'};
      var body = jsonEncode({
        'email': email,
        'password': password,
      });

      var response = await http.post(
        url,
        headers: headers,
        body: body,
      );

      print(response.body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        UserModel user = UserModel.fromJson(data['data']);
        user.token = 'Bearer ' + data['other']['token'];
        return user;
      } else {
        throw Exception(
            "Invalid response from server for token: " + response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
