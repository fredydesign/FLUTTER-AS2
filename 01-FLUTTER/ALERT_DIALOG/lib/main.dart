import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALERT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHome(title: 'ALERT'),
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Tilte AlertDialog'),
                      content: Text('Content of the AlertDialog'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'))
                      ],
                    );
                  });
            },
            child: Text('Open Alert-Dialog'),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                textStyle: TextStyle(color: Colors.white)),
          ),
          Padding(padding: EdgeInsets.all(8)),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Text('Title Cupertino Dialog'),
                      content: Text('Content Cupertino-Dialog'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'))
                      ],
                    );
                  });
            },
            child: Text(
              'Open Cupertino-Dialog',
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(color: Colors.white)),
          )
        ],
      )),
    );
  }
}
