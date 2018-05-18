import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:core';

final List<Widget> armorList = [new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test")),
                   new Divider(),
                   new ListTile(title: new Text("Test"))];

var currentList = 0;

final List<Widget> drawerContent = [
  new Container(child: new Column(
    children: <Widget>[
      new ListTile(
        title: new Text("Armor"),
        onTap: () {},
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

List<Widget> itemListGeneration(newItems){
  List<Widget> items = [];
  for (final item in newItems)
    items.add(item);
  return items;
}

class CompendiumApp extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<CompendiumApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "5e Compendium",
        home: Scaffold(
            appBar: new AppBar(
              title: new Text("5e Compendium"),
            ),
            drawer: new Drawer(
              child: new ListView(
                children: drawerContent,
              ),
            ),
            body: new ListView(
              children: itemListGeneration(armorList),
            )
        )
    );
  }
}

void main() => runApp(new CompendiumApp());