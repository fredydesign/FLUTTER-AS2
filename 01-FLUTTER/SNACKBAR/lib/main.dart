import 'package:flutter/material.dart';

void main(List<String> arguments) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHOP APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: MyHomePage(title: 'SHOP APP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  //STRUCTURE
  final SnackBar _snackbar1 = const SnackBar(
    content: Text('CLOSE THIS WINDOW'),
    backgroundColor: Colors.white,
    duration: Duration(seconds: 4),
  );

  Icon _carrito = Icon(Icons.add_shopping_cart_outlined, color: Colors.black);
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title!,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: _addShoppingCart, icon: _carrito),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nike Mercurial Air Zoom KM',
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            //image.network ---FUNCTION REALTED TO THE INTERNET(RED)
            Image.network(
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b1e4673c-ca2e-48a2-8527-bd9a92e3d20e/zoom-mercurial-superfly-9-elite-km-fg-botas-de-futbol-terreno-firme-N2M9vT.png',
              width: 800,
              height: 600,
              alignment: Alignment.center,
            ),
            Padding(padding: EdgeInsets.all(1)),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('ADD TO THE CART!'),
                    backgroundColor: Colors.blue,
                    duration: Duration(seconds: 4),
                    action: SnackBarAction(
                        label: 'CLOSE',
                        textColor: Colors.white,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        }),
                  ));
                },
                child: Text('BUY NOW'),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }

  void _addShoppingCart() {
    if (_liked) {
      _carrito = Icon(
        Icons.add_shopping_cart_outlined,
        color: Colors.black,
      );
      _liked = false;
    } else {
      _carrito = Icon(
        Icons.add_shopping_cart_rounded,
        color: Colors.black,
      );
      _liked = true;
    }
  }
}
