import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CENTER APP ',
      debugShowCheckedModeBanner: false,
      home: MyHome(title: 'APP CENTER'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title!),
        ),
        body: Center(
          widthFactor: 10,
          heightFactor: 5,
          child: Container(
            child: Text(
              'CENTER - CONTAINER',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
        ));
  }
}

//CENTER --- DIRECTORY
