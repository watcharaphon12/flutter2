import 'package:flutter/material.dart';

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

                          child:
                              TextField(decoration: InputDecoration(hintText: "")),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child:
                              TextField(decoration: InputDecoration(hintText: "")),
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
                    height: 75, width: 75,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {},
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
}
