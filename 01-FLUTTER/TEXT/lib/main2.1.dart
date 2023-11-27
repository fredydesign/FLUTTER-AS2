import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEXT APP',
      home: MyHomePage(title: 'HALLOWEEN APP '),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Fruktur[0]')),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(20)),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 1.05,
            color: Colors.black,
            child: const Text(
              '¡ HALLOWEEN !',
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Fruktur',
              ),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.clip,
              // overflow: TextOverflow.ellipsis,
              //overflow: TextOverflow.fade
              overflow: TextOverflow.clip,
              // overflow: TextOverflow.visible,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Text(
            'TERRIFYING NIGHT',
            style: GoogleFonts.pacifico(
              color: Colors.purple,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}
