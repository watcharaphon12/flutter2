import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:pmii/home/home.dart';
import 'package:pmii/dialog_custom.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pmii/model/connect.dart';
class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  bool status = false;
  bool _isLoading = false;
  bool buttonenabled = true;
  DialogCustom dialogCustom = new DialogCustom();
  TextEditingController username = new TextEditingController(text: 'TEST-IS');
  TextEditingController password = new TextEditingController(text: 'TEST-IS');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: SizedBox(
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 64, top: 140, right: 100),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Welcome ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 5),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 34, right: 30),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("Sign in",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: TextField(
                              controller: username,
                              decoration:
                                  InputDecoration(hintText: "username")),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: TextField(
                              controller: password,
                              decoration:
                                  InputDecoration(hintText: "password")),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 35),
                                child: Align(
                                    child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  width: double.infinity,
                ),
                Positioned(
                  right: 100,
                  top: 5,
                  child: Container(
                    height: 75,
                    width: 75,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {
                        setState(() {
                          dialogCustom.load(context);
                        });
                        setState(() {
                          if (buttonenabled) {
                            buttonenabled = false;
                            login(username.text, password.text).then((value) {
                              setState(() {
                                Navigator.pop(context);
                              });
                              if (status) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              } else {
                                _showDialog(context);
                              }
                              buttonenabled = true;
                            });
                          }
                        });
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.redAccent,
    );
  }

  Future<bool> login(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    var client = http.Client();
    String domain = Connect().domain;
    var connect =new Connect();
    var url = Uri.http(domain, 'api/sent-login');
    var response =
        await client.post(url, body: {'code': username, 'password': password});
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      connect.setToken(data['api_token']);
      connect.setUser(response.body);
      String? token = prefs.getString('token');
      String? user = prefs.getString('user');
      print(user);
      status = true;
      print("ผ่าน");
      return status;
    } else if (response.statusCode == 401) {
      status = false;
      return false;
    } else {
      print("การเชื่อมต่อผิดพลาด");
      status = false;
      return false;
    }
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("รหัสผ่านไม่ถูกต้อง!!"),
        content: new Text("โปรดตรวจสอบชื่อผู้ใช้หรือรหัสผ่านอีกครั้ง!"),
        actions: <Widget>[],
      );
    },
  );
}
