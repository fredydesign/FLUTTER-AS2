import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupertino',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'APP HOME'),
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
  @override //ingone const constructors on this line
  Widget build(BuildContext context) {
    // return CupertinoPageScaffold(
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text('CUPERTINO APP'),
    //       ],
    //     ),
    //   ),
    // );
    //-------------------- SECOND PART---------------------
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, color: Colors.white),
            label: 'MY ACCOUNT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white),
            label: 'MY STATS',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text('$index: HOME '),
                    ],
                  ),
                ),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text('$index: MY ACCOUNT '),
                    ],
                  ),
                ),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text('$index: MY STATS '),
                    ],
                  ),
                ),
              );
            });
          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [
                      Text('$index: HOME '),
                    ],
                  ),
                ),
              );
            });
        }
      },
    );
  }
}
