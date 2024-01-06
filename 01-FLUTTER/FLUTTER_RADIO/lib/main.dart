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

  bool _optionSwitch = false;
  RadioOptions _optionRadio = RadioOptions.Plane;
  Icon _iOr = Icon(Icons.airplanemode_active);
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
              Switch(value: _optionSwitch,
              activeColor: Colors.green,
              activeTrackColor: Colors.green[140],
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,

               onChanged: (value){
                setState(() {
                  _optionSwitch = value;
                });
               }),
               CupertinoSwitch(
                value: _optionSwitch,
                activeColor: Colors.green,
                trackColor: Colors.red[100],
                thumbColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    _optionSwitch = value;
                  });
                })
            ],
          ),
          Text(
            _optionSwitch ? 'Activated' 
            : 'Desactivated'
          ),
          Divider(),
          Text(
            'Radio', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: RadioOptions.Car,
                groupValue: _optionRadio,
                activeColor: Colors.green,
                onChanged: (value){
                  setState(() {
                    _optionRadio = RadioOptions.Car;
                    _iOr = Icon(Icons.directions_car);
                  });
                }),
                Text('Car', style: RadioOptions.Car == _optionRadio ? TextStyle(color: Colors.green) : TextStyle()),
              Radio(
                value: RadioOptions.Plane,
                activeColor: Colors.green,

                groupValue: _optionRadio,
                onChanged: (value){
                  setState(() {
                    _optionRadio = RadioOptions.Plane;
                    _iOr = Icon(Icons.airplanemode_active);

                  });
                }),
                Text('Plane', style: RadioOptions.Plane == _optionRadio ? TextStyle(color: Colors.green) : TextStyle()),

              Radio(
                value: RadioOptions.Boat,
                groupValue: _optionRadio,
                activeColor: Colors.green,

                onChanged: (value){
                  setState(() {
                    _optionRadio = RadioOptions.Boat;
                    _iOr = Icon(Icons.directions_boat);

                  });
                }),
                Text('Boat', style: RadioOptions.Boat == _optionRadio ? TextStyle(color: Colors.green) : TextStyle()),
              
            ],
          ),
          _iOr
        ],
      )),
    );
  }
}

  


enum RadioOptions{
    Car,
    Plane,
    Boat

  }
