import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STATE',
      debugShowCheckedModeBanner: false,
      home: MyHome(title: 'APP STATE'),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key, this.title}) : super(key: key);
  final String? title;
  Color color = Colors.red;
  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome> {
  int _red = 0;
  int _blue = 0;
  int _green = 0;
  Icon _home = Icon(Icons.home, color: Colors.red);
  bool _touched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title!,
          style: TextStyle(color: Colors.black),
        ),
        actions: [IconButton(onPressed: _Icon, icon: _home)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('STATE APP'),
            Container(
                color: widget.color,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.7,
                alignment: Alignment.center,
                child: Text(
                    'R (${widget.color.red}) G (${widget.color.green}) B (${widget.color.green})')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _colorChange,
        backgroundColor: widget.color,
      ),
    );
  }

  void _colorChange() {
    _red = Random.secure().nextInt(256);
    _green = Random.secure().nextInt(256);
    _blue = Random.secure().nextInt(256);

    setState(() {
      widget.color = Color.fromRGBO(_red, _green, _blue, 1);
    });
  }

  void _Icon() {
    setState(() {
      if (_touched) {
        _home = Icon(Icons.home, color: Colors.red);
        _touched = false;
      } else {
        _home = Icon(Icons.home, color: Colors.blue);
        _touched = true;
      }
    });
  }
}
