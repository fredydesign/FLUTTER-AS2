import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOTONES APP',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'BOTONES'),
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
  String botonPulsado = 'Ninguno';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'El botón pulsado es: ',
            ),
            Text(
              '$botonPulsado',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Padding(padding: EdgeInsets.all(8)),
            ElevatedButton(
                onPressed: elevatedboton,
                child: Text('ELEVATED BOTON'),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  backgroundColor: Colors.amber,
                  shadowColor: Colors.amberAccent,
                )),
            Padding(padding: EdgeInsets.all(5)),
            TextButton(
                onPressed: _textButtonPulsado,
                child: Text('TextButton'),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
            IconButton(
              onPressed: _iconBotonPulsado,
              icon: Icon(Icons.accessibility),
              color: Colors.blue,
              iconSize: 40,
            ),
            Ink(
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                onPressed: _icon2Pulsado,
                icon: Icon(Icons.accessibility),
                color: Colors.white,
                iconSize: 40,
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            OutlinedButton(
              onPressed: _outlineBotonPulsado,
              child: Text('Outline',
                  style: TextStyle(
                    color: Colors.purple,
                  )),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: Colors.purple,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            CupertinoButton(
                child: Text('Cupertino Boton'),
                onPressed: _cupertionPulsado,
                color: Colors.greenAccent)

            //añadir color de fondo
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingPulsado,
        tooltip: 'PULSA',
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _floatingPulsado() {
    _queBoton('flo');
  }

  void elevatedboton() {
    _queBoton('ele');
  }

  void _textButtonPulsado() {
    _queBoton('text');
  }

  void _iconBotonPulsado() {
    _queBoton('icon');
  }

  void _icon2Pulsado() {
    _queBoton('icon2');
  }

  void _outlineBotonPulsado() {
    _queBoton('Outline');
  }

  void _cupertionPulsado() {
    _queBoton('ciu');
  }

  void _queBoton(String boton) {
    setState(() {
      switch (boton) {
        case 'flo':
          botonPulsado = 'Floating action';
          break;
        case 'ele':
          botonPulsado = 'Elevated Boton';
          break;
        case 'text':
          botonPulsado = 'Text Boton';
          break;
        case 'icon':
          botonPulsado = 'Icon Boton';

        case 'icon2':
          botonPulsado = 'Icon Boton 2';
          break;
        case 'Outline':
          botonPulsado = 'Outline Boton';
          break;
        case 'ciu':
          botonPulsado = 'Cupertino Boton';
          break;
      }
    });
  }
}
