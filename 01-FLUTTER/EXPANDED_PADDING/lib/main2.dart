import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EXPANDED APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'HOME PAGE'),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              color: Colors.amber,
              child: Text('A'),
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
