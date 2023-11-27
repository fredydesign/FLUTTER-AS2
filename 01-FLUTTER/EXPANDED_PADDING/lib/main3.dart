import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIVIDER APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'DIVIDER PAGE'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              color: Colors.amber,
              child: Text('A'),
            ),
            Divider(
              color: Colors.purple,
              indent: 10,
              endIndent: 10,
              height: 10,
              thickness: 2,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                color: Colors.red,
                child: Text('B'),
              ),
            ),
            Divider(
              indent: 10, //distancia con el margen izquierdo
              endIndent: 10,
              thickness: 2,
              height: 10,
              color: Colors.purple,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              color: Colors.blue,
              child: Text('C'),
            ),
          ],
        ),
      ),
    );
  }
}
