import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NIKE APP SPORTSWEAR',
      home: MyHomePage(title: 'OMK APP'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  //const
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _niky = Icon(Icons.add_home_outlined, color: Colors.black);
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title!,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _functionNike();
              },
              icon: _niky)
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          Padding(padding: EdgeInsets.all(17)),
          ElevatedButton(
            onPressed: () {
              _functionFB();
            },
            child: Column(children: [
              Text('WELCOME',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23))
            ]),
          ),
          Padding(padding: EdgeInsets.all(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://d2j6dbq0eux0bg.cloudfront.net/images/82820734/3728637909.png',
                width: 400,
                height: 400,
              ),
            ],
          ),
        ],
      )),
    );
  }

  void _functionFB() {}
  void _functionNike() {
    setState(() {
      if (_checked) {
        _niky = Icon(
          Icons.add_home_outlined,
          color: Colors.black,
        );
        _checked = false;
      } else {
        _niky = Icon(Icons.add_home, color: Colors.black);
        _checked = true;
      }
    });
  }
}
