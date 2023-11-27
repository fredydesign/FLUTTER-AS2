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
      title: 'IMAGES',
      debugShowCheckedModeBanner: false,
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
            Padding(padding: EdgeInsets.all(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(
                //   'Assets/images/nike.png',
                //   width: 300,
                // )
                //IMAGE NETWORK ------------------ RED
                Image.network(
                  'https://www.fayerwayer.com/resizer/7uttPkeBz_XSe4VzwUp_90fPMy0=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/S4XYSGMG7VA3NIJW3PHSZ7PBBU.jpg',
                  width: 411.42,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//PUBSPEC.YAML--------------------------
//flutter: assets: -directory/--------------
