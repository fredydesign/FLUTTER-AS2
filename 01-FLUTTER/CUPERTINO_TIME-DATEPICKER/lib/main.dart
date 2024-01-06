import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:google_fonts/google_fonts.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DATE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'DATE APP'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es', 'ES'),
      ],
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
  var _date;
  var _time;

  Icon _home = Icon(Icons.home, color: Colors.red);
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            widget.title!,
            // style: GoogleFonts.lato(color: Colors.red, fontSize: 40),
          ),
          actions: [IconButton(onPressed: _homeIcon, icon: _home)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _selectDate,
                child: Text(
                  'SELECT DATE',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected date is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _date == null
                    ? 'None selected DATE'
                    : '${_date.day}/${_date.month}/${_date.year}',
                style: _date == null
                    ? TextStyle(color: Colors.red)
                    : TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(25)),
              //--------------------------------------------------------------------//
              ElevatedButton(
                onPressed: _selectTime,
                child:
                    Text('SELECT HOUR', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),
              Padding(padding: EdgeInsets.all(10)),
              const Text('The selected hour is: '),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                _time == null
                    ? 'None selected HOUR'
                    : '${_time.format(context)}',
                style: _time == null
                    ? TextStyle(color: Colors.green)
                    : TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Image.network(
                'https://image.lexica.art/full_webp/046dcf34-23a3-419a-99ca-bb305694ac53',
                width: 200,
                height: 400,
              )
            ],
          ),
        ));
  }

  void _homeIcon() {
    setState(() {
      if (_state) {
        _home = Icon(Icons.home, color: Colors.red);
        _state = false;
      } else {
        _home = Icon(Icons.home, color: Colors.black);
        _state = true;
      }
    });
  }

  Future _selectDate() async {
    DateTime? _selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

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
