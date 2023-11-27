import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override //constructor
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPACE X ',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'SPACE X HOME'),
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
  Icon _heart = Icon(Icons.favorite_border, color: Colors.white);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: () {
                _likedButton();
              },
              icon: _heart),
        ],
      ),
    );
  }

  void _likedButton() {
    setState(() {
      if (_liked) {
        _heart = Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        _heart = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }
}
