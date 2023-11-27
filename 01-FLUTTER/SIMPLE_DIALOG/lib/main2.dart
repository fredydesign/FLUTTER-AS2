import 'dart:js';

import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIMPLE DIALOG',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHome(title: 'Simple Dialog'),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome> {
  String _option = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _chooseOption();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(color: Colors.white)),
                child: Text('Open Simple-Dialog')),
            Padding(padding: EdgeInsets.all(150)),
            Text(
              'Election is ',
              style: TextStyle(color: Colors.indigo, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.all(150)),
            Text(
              '$_option',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _chooseOption() async {
    switch (await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Choose an option'),
            children: [
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.directions_car),
                    Text('Car'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, OptionList.Car);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.airplanemode_active),
                    Text('Plane'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, OptionList.Plane);
                },
              ),
              SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.directions_boat),
                    Text('Boat'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, OptionList.Boat);
                },
              ),
            ],
          );
        })) {
      case OptionList.Car:
        _choosedO('car');
        break;
      case OptionList.Car:
        _choosedO('plane');
        break;
      case OptionList.Car:
        _choosedO('boat');
        break;
    }
  }

  void _choosedO(String option) {
    setState(() {
      _option = option;
    });
  }
}

enum OptionList {
  Car,
  Plane,
  Boat,
}
