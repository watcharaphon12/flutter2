import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:pmii/model/get_machine.dart';
class Machine extends StatefulWidget {
  const Machine({Key? key}) : super(key: key);

  @override
  State<Machine> createState() => _MachineState();
}

class _MachineState extends State<Machine> {
String user="",pass="";

  List<getMachine> code = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      FutureBuilder(
        future: setMachine(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return  Card(
                  child:  ListTile(
                    leading: const  Icon(Icons.album),
                    title: const Text('The Enchanted Nightingale'),
                    subtitle: const Text(
                      'Music by Julie Gable. Lyrics by Sidney Stein.',
                    ),
                    onTap: () {

                    },
                  ),);
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      );

  }

  Future<List<getMachine>> setMachine() async {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');
    var client = http.Client();
    var url = Uri.http('192.168.1.214:8080', 'api/data/machine',{"factory":"1310"});
    var response =
    await client.get(url,headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      var data = convert.jsonDecode(response.body);
      // return
      // print(data['data'].length);
      // for(int i=0;i<data['data'].length;i++){
      //  //  code[i] = data['data'][i]['code'].toString();
      //   print(i);
      // }

      // await prefs.setString('token', data['authorisation']['token']);
      // String? token = prefs.getString('token');
      // print(token); true;
      // print(data['data'][0]['code']);
     // print(data);
      return compute(parseProducts, response.body);
    }  else { // กรณี error
    throw Exception('Failed to load product');
    }
  }
List<getMachine> parseProducts(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<getMachine>((json) => getMachine.fromJson(json)).toList();
}
}

