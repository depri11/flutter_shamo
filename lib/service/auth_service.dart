import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shamo/models/user_model.dart';

class AuthService {
  String baseUrl = 'http://localhost:8001/api/v1';

  Future<UserModel?> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
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
      user.token = 'Bearer ' + data['token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}
