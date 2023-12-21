import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DATE CUPERTINO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'CUPERTINO DATE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _date = null;
  var _time = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              widget.title!,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: _displayCalendar(),
                          height: MediaQuery.of(context).size.height / 3,
                        );
                      });
                },
                child: Text('BIRTH DATE'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
              ),
              Padding(padding: EdgeInsets.all(10)),

              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: _displayClock(),
                          height: MediaQuery.of(context).size.height / 3,
                        );
                      });
                },
                child: Text('BIRTH DATE'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected date is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _date == null
                    ? 'None date selected'
                    : '${_date.day}/${_date.month}/${_date.year}',
                style: _date == null
                    ? TextStyle(color: Colors.red)
                    : TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected hour is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _time == null
                    ? 'None hour selected'
                    : '${_date.hour}/${_date.minute}',
                style: _date == null
                    ? TextStyle(color: Colors.green)
                    : TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

              //-----------------------------------------------------------//
            ],
          ),
        ));
  }

  Widget _displayCalendar() {
    return CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        maximumDate: DateTime.now(),
        minimumDate: DateTime(1998),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (value) {
          setState(() {
            _date = value;
          });
        });
  }

  Widget _displayClock() {
    return CupertinoDatePicker(
        initialDateTime: DateTime.now(),
        maximumDate: DateTime.now(),
        minimumDate: DateTime(1998),
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (value) {
          setState(() {
            _time = value;
          });
        });
  }
}
