import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:convert';

// api: http://www.dnd5eapi.co/api/

final List<Widget> homeList = [
  new ListTile(title: new Text("Select a category from the drawer to get started."))
];

final List<Widget> armorList = [new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test"))];

List<Widget> currentList = [];
String currentTitle = "";

final List<Widget> drawerContent = [
  new Container(child: new Column(
    children: <Widget>[
      new ListTile(
        title: new Text("Armor"),
        onTap: () {
//          setState(() {
//            currentTitle = "Armor";
//            currentList = armorList;
//          });
        },
      ),
      new ListTile(
        title: new Text("Weapons"),
        onTap: () {},
      ),
      new ListTile (
        title: new Text("Items"),
        onTap: () {},
      ),
      new Divider(),
      new ListTile (
        title: new Text("About"),
        onTap: () {},
      )
    ],
  ),)
];

class CompendiumApp extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<CompendiumApp> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: currentTitle,
        home: Scaffold(
            appBar: new AppBar(
              title: new Text(currentTitle),
            ),
            drawer: new Drawer(
              child: new ListView(
                children: drawerContent,
              ),
            ),
            body: new ListView(
              children: currentList,
            )
        )
    );
  }
}

void main() {
  currentTitle = "5e compendium";
  currentList = homeList;
  runApp(new CompendiumApp());
}
