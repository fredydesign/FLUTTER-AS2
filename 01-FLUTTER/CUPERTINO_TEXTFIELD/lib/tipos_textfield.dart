import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Textfield',
      home: MyHomePage(title: 'TEXTFIELD'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHomePage> {
  TextStyle style1 = TextStyle(
    color: Colors.white,
  );
  TextStyle style2 =
      TextStyle(color: Colors.amber, fontWeight: FontWeight.bold);

  Icon _icon1 = Icon(Icons.home, color: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: (Text(
          widget.title!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.5),
        )),
        actions: [
          IconButton(onPressed: _functionIconm1, icon: _icon1),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Formulario',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                width: MediaQuery.of(context).size.width *
                    0.9, //MEDIAQERY --ADAPTACION PANTALLA
                child: Column(
                  children: const [
                    Text('Introduce tu contraseña'),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Introduce tu contraseña',
                      ),
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Introduce tu datetime'),
                    TextField(
                      decoration:
                          InputDecoration(hintText: 'Introduce tu datetime'),
                      keyboardType: TextInputType.datetime,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Introduce tu email'),
                    TextField(
                      decoration:
                          InputDecoration(hintText: 'Introduce tu email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Introduce tu multiline'),
                    TextField(
                      decoration:
                          InputDecoration(hintText: 'Introduce tu multiline'),
                      keyboardType: TextInputType.multiline,
                    ),
                    Padding(padding: EdgeInsets.all(1)),
                    Text('Introduce tu url'),
                    TextField(
                      decoration: InputDecoration(hintText: 'Introduce tu url'),
                      keyboardType: TextInputType.url,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _functionIconm1() {}
}
