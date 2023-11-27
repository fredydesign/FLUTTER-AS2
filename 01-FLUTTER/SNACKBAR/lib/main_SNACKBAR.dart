//POP-APP ---- VENTANAS EMERGENTES LOCALIZADAS EN WEB QUE PUEDEN APARECER DE
//forma intrusiva o concedida

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SNACK BAR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHome(title: 'EXAMPLE SNACKBAR APP'),
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key? key, this.title}) : super(key: key);
  final String? title;

  final SnackBar _snackBar = const SnackBar(
    content: Text('EXAMPLE SNACKBAR'),
    duration: Duration(seconds: 1),
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: (Text(title!))),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('EXAMPLE SNACKBAR'),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(
                      label: 'Close',
                      textColor: Colors.white,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      }),
                ),
              );
            },
            child: Text('Open SnackBar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              textStyle: TextStyle(color: Colors.white),
            ),
          )
        ],
      )),
    );
  }
}
