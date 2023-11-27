import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FREDY APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'FREDY HOME PAGE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'APP_NAVIGATION',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
          ]),
        ),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          middle: Text(
            'TITLE OF THE PAGE',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Icon(Icons.shopping_bag, color: Colors.white),
        ));
  }
}
