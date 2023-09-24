import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      title: 'HELLO FREDY JR.',
      home: SafeArea(
        child: MyHelloWorldApp()
      ),
    )
  );
}

class MyHelloWorldApp extends StatelessWidget{

  const MyHelloWorldApp({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.all(8),
            decoration : const BoxDecoration(color: Colors.blue),
            child: const Row(
              children:  [
                 IconButton(
                    onPressed: null,
                    icon: Icon(Icons.menu),
                    tooltip: 'NAVIGATION BUTTON'
                ),
                Expanded(
                    child: Text('APP FLUTTER'),
                ),
                 IconButton(
                    onPressed: null,
                    icon: Icon(Icons.search),
                    tooltip: 'SEARCH',
                )
              ]
            )
          ),
          const Expanded(
            child: Center(
              child: Text('HELLO FREDY',
              textDirection: TextDirection.ltr
              ),
            ),
          ),
        ],
      ),
    );
  }

}
