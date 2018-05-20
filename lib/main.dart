import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

// api: http://www.dnd5eapi.co/api/

//TODO: Add navigation drawer

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new EquipmentState();
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '5e Compendium',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class EquipmentSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new BottomSheet(
      //TODO: build bottom sheet
      builder: null,
      onClosing: null,
    );
  }
}

class EquipmentState extends State<HomePage> {
  final String url = "http://dnd5eapi.co/api/equipment/";
  List data;

  Future<String> getEquipmentData() async {
    var res = await http.get(
        Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody['results'];
    });

    return "Success!";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Equipment"),
      ),
        body: Container(
        child: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListTile(
                      title: Text(data[index]["name"], style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                      onTap: (){},
                    ),
                    Divider(),
                  ],
                ),
              ),
            );
          },
        )
    ));
  }

  @override void initState() {
    // TODO: implement initState
    super.initState();
    this.getEquipmentData();
  }
}


void main() => runApp(new MyApp());
