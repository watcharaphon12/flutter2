import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(top: 50),
                    child: CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius: 51,
                      child: CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 50,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://hilight.kapook.com/img_cms2/user/ammod/Brown2.jpg'),
                        ),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "Ramsy Roger",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 8),
                  child: Text(
                    "แผนก ซ่อมเครื่องจักร",
                    style: TextStyle(
                        color: Color.fromARGB(255, 215, 213, 213),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextButton(
                      onPressed: () => {},
                      child: Text(
                        "แก้ไขโปรไฟล์",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                )
              ]),
            ),
          ),
          Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 241, 241),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ),
                    ),
                    width: double.infinity,
                  ),
                  Container(
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(30),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 7,
                                    child: Icon(
                                      Icons.add_alert_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('แจ้งซ่อม',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: Icon(
                                      Icons.add_box_outlined,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('สั่งซ่อม',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.leaderboard,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('ภาพรวม',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.pan_tool,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('ระหว่างซ่อม',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.pending_actions,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('บันทึกแผน',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.assignment_turned_in,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('อนุมัติ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.construction,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('อะไหล่',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 194, 192, 192),
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                ),
                              ]),
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Icon(
                                      Icons.credit_score,
                                      size: 40,
                                      color: Colors.black,
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: const Text('อนุมัติ(ผู้แจ้ง)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: double.infinity,
                  ),
                ],
              )),
        ]),
      ),
      backgroundColor: Colors.redAccent,
    );
  }
}
