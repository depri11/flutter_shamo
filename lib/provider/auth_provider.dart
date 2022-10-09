import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../service/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String? fullname,
    String? username,
    String? email,
    String? password,
  }) async {
    try {
      UserModel? user =
          await AuthService().register(fullname, username, email, password);

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String? email,
    String? password,
  }) async {
    try {
      UserModel? user = await AuthService().login(email, password);

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
