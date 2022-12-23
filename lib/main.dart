import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      home: PageLogin(),
    );
  }
}

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  bool status = false;
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
                      margin: EdgeInsets.only(left: 64, top: 140, right: 100),
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
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
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
                          FutureBuilder(
                            future: login(username.text, password.text),
                            builder: (BuildContext context,
                                AsyncSnapshot<dynamic> snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                print(snapshot.data);
                                var result = snapshot.data;
                                return Text('data');
                              }
                              return CircularProgressIndicator();
                            },
                          );
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

  Future<dynamic> login(String username, String password) async {
    var url = Uri.http('192.168.1.42:8080', 'api/login');
    var response =
        await http.post(url, body: {'code': username, 'password': password});
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      var status = data['status'];
      //  print("ผ่าน");
      return data;
    } else if (response.statusCode == 401) {
      return false;
    } else {
      print("การเชื่อมต่อผิดพลาด");
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
