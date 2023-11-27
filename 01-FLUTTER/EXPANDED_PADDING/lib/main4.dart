import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '  CONTAINER',
      debugShowCheckedModeBanner: false,
      home: MyHome(title: 'CONTAINER APP'),
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
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(padding: EdgeInsets.only(top: 20, bottom: 50)),
              Container(
                child: Text('Container 1'),
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Container 2'),
                height: 40,
                width: 40,
                margin: EdgeInsets.only(bottom: 30),
                color: Colors.green,
              ),
              Container(
                child: Text('Container 3'),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text('Container 4'),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.greenAccent,
                ),
                padding: EdgeInsets.all(40), //AJUSTAR
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                child: Text(
                  'Container 5',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(8), //AJUSTAR
                margin: EdgeInsets.only(bottom: 30),
              ),
              Container(
                color: Colors.black12,
                child: Icon(
                  Icons.car_rental,
                ),
                height: 60,
                width: 60,
                margin: EdgeInsets.only(bottom: 30),
                alignment: Alignment(-0.8, -0.4),
              ),
            ],
          ),
        ));
  }
}
