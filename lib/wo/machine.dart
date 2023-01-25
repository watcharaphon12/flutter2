import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:pmii/model/get_machine.dart';
import 'package:pmii/model/connect.dart';

class Machine extends StatefulWidget {
  const Machine({Key? key}) : super(key: key);

  @override
  State<Machine> createState() => _MachineState();
}

class _MachineState extends State<Machine> {
  var machine;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: FutureBuilder(
        future: setMachine(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: item,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(machine![index].code.toString()),
                    subtitle: Text(machine![index].nameth.toString()),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                );
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

  Future<bool> setMachine() async {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');
    var client = http.Client();
    var url = Uri.http(Connect().domain, 'api/get-machine', {"token": token});
    print(url);
    var response = await client.get(url, headers: {});
    if (response.statusCode == 200) {
      print(555);
      //  var data = convert.jsonDecode(response.body);

      GetMachine getMachine = new GetMachine();

      var data = getMachine.getMachineFromJson(response.body);
      machine = data.data;
      item = machine.length;
      return true;
    } else {
      print(response.statusCode);
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
