import 'package:flutter/material.dart';
import 'package:pmii/wo/machine.dart';

import '../home/home.dart';

class Wo extends StatefulWidget {
  const Wo({Key? key}) : super(key: key);

  @override
  State<Wo> createState() => _WoState();
}

class _WoState extends State<Wo> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Center(
          child: Center(
            child:  Text("แจ้งซ่อม",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          ),
        ),
      ),

      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
          Container(
            width: double.infinity,
              margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),

         child:  Text("เครื่องจักร",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),

              width: double.infinity,
                child:TextField(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Machine()));
                  },
                  decoration: InputDecoration(
                      focusedBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),

                      hintText: "เลือกเครื่องจักร")),
                )
                , Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),

                  child:  Text("อุปกรณ์",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),

                width: double.infinity,
                child:TextField(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Machine()));
                    },
                    decoration: InputDecoration(
                        focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),

                        hintText: "เลือกอุปกรณ์")),
              )
              , Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                  child:  Text("อาการเสีย",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),

                width: double.infinity,
                child:TextField(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Machine()));
                    },
                    decoration: InputDecoration(
                        focusedBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),

                        hintText: "เลือกอาการเสีย")),
              ),
              Container(
                margin: EdgeInsets.only(top: 30,left: 20,right: 20),

                width: double.infinity,
                child:TextFormField(
                  decoration: InputDecoration(
                      hintText: "รายละเอียด",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),

                  ),
                  minLines: 4, // any number you need (It works as the rows for the textarea
                  maxLines: null,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(right: 50,left: 50),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(25))


                ),
                child: TextButton(child: Text("ยืนยันการแจ้งซ่อม",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),onPressed: null,),
              )
              ,

            ],
          ),
        ),
      ),
    );


  }
}
