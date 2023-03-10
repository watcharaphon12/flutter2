import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:pmii/model/user.dart';

class Connect {
  //final domain = '192.168.1.214:8080';
  final domain = '192.168.1.42:8080';

  Future<void> setToken(String token_api, String code) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token_api);
    await prefs.setString('username', code);
  }

  Future<dynamic> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = await prefs.getString('token');
    String? username = await prefs.getString('username');
    var url = Uri.http(domain, 'api/user/$username', {"token": token});
    var response = await http.get(url);
    User user = new User();
    var data = user.getUserFromJson(response.body);
    // print(data[0].code);
    return data[0];
  }
}
