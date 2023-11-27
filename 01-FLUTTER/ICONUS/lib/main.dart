import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICONUS',
      debugShowCheckedModeBanner: true,
      home: MyHomePage(title: 'ICONUS HOME'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //constructor
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override //constructor
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Material Icon:',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.home, color: Colors.deepPurple, size: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cupertino Icon: ',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(padding: EdgeInsets.all(3)),
                Icon(CupertinoIcons.home, color: Colors.indigo, size: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Font-Awesome Icon: ',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Padding(padding: EdgeInsets.all(3)),
                Icon(FontAwesomeIcons.house, //---------------FAICON === ICON
                    color: Colors.blueGrey,
                    size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//RESOURCES -------------------------------- RESOURCES ------------------------------------ RESOURCES
//fontawesome.com
//fonts.google.com/icons
//pub.dev/cupertino-icons

