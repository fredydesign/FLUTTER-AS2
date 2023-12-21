// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Textfield',
//       home: MyHomePage(title: 'TEXTFIELD'),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.amber),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, this.title}) : super(key: key);
//   final String? title;

//   @override
//   _MyHome createState() => _MyHome();
// }

// class _MyHome extends State<MyHomePage> {
//   final _controller = TextEditingController();
//   String _textoIntroducido = 'Ningún texto introducido';
//   TextStyle style1 = TextStyle(
//     color: Colors.white,
//   );
//   TextStyle style2 =
//       TextStyle(color: Colors.amber, fontWeight: FontWeight.bold);

//   Icon _icon1 = Icon(Icons.home, color: Colors.blue);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: (Text(
//           widget.title!,
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.5),
//         )),
//         actions: [
//           IconButton(onPressed: _functionIconm1, icon: _icon1),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(padding: EdgeInsets.all(10)),
//               const Text(
//                 'Formulario',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               const Padding(padding: EdgeInsets.all(10)),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.43,
//                 width: MediaQuery.of(context).size.width *
//                     0.9, //MEDIAQERY --ADAPTACION PANTALLA
//                 child: Column(
//                   children: [
//                     const Text('Introduce tu texto'),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Introduce tu texto',
//                       ),
//                       controller: _controller,
//                       obscureText: false,
//                     ),
//                     Padding(padding: EdgeInsets.all(10)),
//               Container(
//                 width: MediaQuery.of(context).size.width*0.8,
//                 child: Column(children: [
//                   Padding(padding: EdgeInsets.all(10)),
//                   Text('1. TEXT EN DIRECTO', style: style2),
//                   Text('$_textoIntroducido', style: style1),
//                   Padding(padding: EdgeInsets.all(10)),
//                 ]),
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   boxShadow: [BoxShadow(
//                     color: Colors.black,
//                     blurRadius: 25,
//                     spreadRadius: 5,
//                     offset: Offset(0, 15),
//                   )],
//                 ),

                
//               ),
//                   ],
//                 ),
//               ),
              
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _functionIconm1() {}

//   @override
//   void initState(){
//     super.initState();
//     _controller.addListener(_mostrarValorIntroducido);
//     _controller.value = TextEditingValue(text: 'Valor inicial');
//   }

//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
    
//   }
//   void _mostrarValorIntroducido(){
//     setState(() {
//       _textoIntroducido = _controller.text;
//     });
//   }
// }