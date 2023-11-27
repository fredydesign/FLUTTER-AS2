import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Detección de Plataforma'),
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
  Icon _corazon = Icon(Icons.favorite_rounded, color: Colors.white);
  bool _liked = false;
  int _selectItem = 0;
  String textVisualise = '0 : Home';

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? cupertino() : material2();
  }

  Widget material() {
    return Scaffold(
      appBar: AppBar(
        title: (Text(widget.title!)),
        actions: [
          IconButton(
              onPressed: () {
                _likedChange();
              },
              icon: _corazon)
        ],
      ),
    );
  }

  Widget material2() {
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

  Widget cupertino() {
    return CupertinoPageScaffold(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'APP_NAVIGATION',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
          ]),
        ),
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          middle: Text(
            widget.title!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Icon(Icons.shopping_bag, color: Colors.white),
        ));
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _corazon = Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        _corazon = Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }

  void _itemPulsado(int index) {
    setState(() {
      _selectItem = index;
      switch (_selectItem) {
        case 0:
          textVisualise = '$_selectItem : Home';
          break;
        case 1:
          textVisualise = '$_selectItem : My Account';
          break;
        case 2:
          textVisualise = '$_selectItem : Stats';
          break;
      }
    });
  }
}
