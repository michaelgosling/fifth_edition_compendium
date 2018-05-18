import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '5e Compendium',
      theme: new ThemeData(
        primarySwatch: Colors.black,
      ),
      home: new ItemList(),
    );
  }
}

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => new _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


