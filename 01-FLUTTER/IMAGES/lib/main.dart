import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  //constrcutor
  //widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEGRO JR. APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'JR. APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title; //jr. final-constant

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _heart = Icon(Icons.favorite_border, color: Colors.red);
  bool _liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title!,
          style: TextStyle(color: const Color.fromARGB(255, 238, 167, 167)),
        ),
        actions: [
          IconButton(onPressed: _likedButton, icon: _heart),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('INSTAGRAM CHULINO_JR_GDD',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Padding(padding: EdgeInsets.all(50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://1.bp.blogspot.com/-5uaVtSr0oSk/T0FQPjLEznI/AAAAAAAAAE0/QtjkOFQTD7M/s1600/Baljeet_studying.png',
                  // colorBlendMode: Colors.purple,
                  width: 390,
                ), //411.42
              ],
            ),
            Padding(padding: EdgeInsets.all(30)),
            FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 236, 184, 180),
                onPressed: _floatingPressed,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('1 POST',
                        style: TextStyle(
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(padding: EdgeInsets.all(30)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                onPressed: _ele,
                child: Column(
                  children: [
                    Text('CHULINO JR.',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void _floatingPressed() {}
  void _ele() {}
  void _likedButton() {
    setState(() {
      if (_liked) {
        _heart = Icon(Icons.favorite_border, color: Colors.red);
        _liked = false;
      } else {
        _heart = Icon(Icons.favorite, color: Colors.red);
        _liked = true;
      }
    });
  }
}
