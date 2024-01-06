import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2 FUNCTIONS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'DATE'),
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
                onPressed: _selectDate,
                child: Text('BIRTH DATE'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected date is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _date == null
                    ? 'None selected Date'
                    : '${_date.day}/${_date.month}/${_date.year}',
                style: _date == null
                    ? TextStyle(color: Colors.red)
                    : TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),

              //-----------------------------------------------------------//
              ElevatedButton(
                onPressed: _selectTime,
                child: Text('HOUR BIRTH DATE'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected hour is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _date == null
                    ? 'None selected hour'
                    : '${_time.format(context)}',
                style: _date == null
                    ? TextStyle(color: Colors.green)
                    : TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ],
          ),
        ));
  }

  Future _selectDate() async {
    DateTime? _selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2007),
        lastDate: DateTime.now());

    setState(() {
      if (_date != null) {
        _date = _selectedDate;
      }
    });
  }

  Future _selectTime() async {
    TimeOfDay? _selectedTime = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 9, minute: 41));

    setState(() {
      if (_time != null) {
        _time = _selectedTime;
      }
    });
  }
}
