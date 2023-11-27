import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override //constructor
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'FREDY BENSON JR.',
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                backgroundColor: Color.fromARGB(0, 224, 204, 235)
                // fontSize: EdgeInsets.symmetric(horizontal: 15, vertical: 30)),

                ),
          ),
        ),
      ),
    );
  }
}
//   @override
//   Widget material(BuildContext context) {
//     return MaterialApp(
//       title: 'SIUUU',
//     );
//   }
// }
