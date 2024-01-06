import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FORM APP',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.blue),
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
  Map _optionCheckBox = {
    RadioOptions.Car : false,
    RadioOptions.Plane : false,
    RadioOptions.Boat : false,
  };
  double _optionSlider = 0;
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
          _iOr,
          Divider(),
          Text('Checkbox', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
         )),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _optionCheckBox[RadioOptions.Car],
              activeColor: Colors.green,
             onChanged: (value){
              setState(() {
              _optionCheckBox[RadioOptions.Car] = value;
                
              });
              
             }),
             Text('Car', style: _optionCheckBox[RadioOptions.Car] ? TextStyle(color: Colors.green): TextStyle()),
              Checkbox(
              value: _optionCheckBox[RadioOptions.Plane],
             onChanged: (value){
              setState(() {
              _optionCheckBox[RadioOptions.Plane] = value;
                
              });
             }),
             Text('Plane', style: _optionCheckBox[RadioOptions.Plane] ? TextStyle(color: Colors.green): TextStyle(),),
              Checkbox(
              value: _optionCheckBox[RadioOptions.Boat],
             onChanged: (value){
              setState(() {
              _optionCheckBox[RadioOptions.Boat] = value;
                
              });
             }),
             Text('Boat', style: _optionCheckBox[RadioOptions.Boat] ? TextStyle(color: Colors.green): TextStyle()),
          ],
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.directions_car,color:  _optionCheckBox[RadioOptions.Car] ? Colors.green : Colors.grey),
            Icon(Icons.airplanemode_active,color:  _optionCheckBox[RadioOptions.Plane] ? Colors.green : Colors.grey),
            Icon(Icons.directions_boat,color:  _optionCheckBox[RadioOptions.Boat] ? Colors.green : Colors.grey),

          ],
         ),
         Divider(),
         Text('Slider', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
         )),
         Slider(
          value: _optionSlider,
          activeColor: Colors.green,
          label: '$_optionSlider',
          min: 0,
          max: 10,
          divisions: 10,
          thumbColor: const Color.fromARGB(255, 0, 66, 3),
          inactiveColor: Colors.green[100],
           onChanged: (value){
            setState(() {
              _optionSlider = value;
            });
           }),
           Container(
            width: MediaQuery.of(context).size.width*0.97,
            
             child: CupertinoSlider(
              value: _optionSlider,
              min: 0,
              max: 10,
              divisions: 10,
              activeColor: Colors.purple[300],
              thumbColor:  Colors.white,
              
               onChanged: (value){
              setState(() {
                _optionSlider = value;
              });
             }),
           ),
           Text('The value of the slider is: ${_optionSlider.toStringAsFixed(2)}',
            style: _optionSlider < 5.00 ? TextStyle(color: Colors.red) : TextStyle(color: Colors.green),)

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