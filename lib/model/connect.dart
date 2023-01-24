 import 'package:shared_preferences/shared_preferences.dart';
class Connect {
  final domain = '192.168.1.214:8080';

   Future<void> setToken(String token_api) async {
     final prefs = await SharedPreferences.getInstance();
     await prefs.setString('token', token_api);
  }
  Future<void> setUser(user) async {
    final prefs = await SharedPreferences.getInstance();
   // print(user);
    await prefs.setString('user', user);
  }
}