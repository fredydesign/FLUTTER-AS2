import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWITCH APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'SWITCH APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);
  @override
  _MHS createState() => _MHS();
}

class _MHS extends State<MyHomePage> {

  bool _option = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title!,
            style: TextStyle(color: Colors.black),
          )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select option',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
          Divider(),
          Text(
            'Switch',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(value: _option,
              activeColor: Colors.green,
              activeTrackColor: Colors.green[140],
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,

               onChanged: (value){
                setState(() {
                  _option = value;
                });
               }),
               CupertinoSwitch(
                value: _option,
                activeColor: Colors.green,
                trackColor: Colors.red[100],
                thumbColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    _option = value;
                  });
                })
            ],
          ),
          Text(
            _option ? 'Activated' 
            : 'Desactivated'
          )
        ],
      )),
    );
  }
}
