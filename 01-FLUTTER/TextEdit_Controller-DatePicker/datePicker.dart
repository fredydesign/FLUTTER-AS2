// import 'package:flutter/material.dart';
// import 'package:myapp/main2.dart';

// void main(List<String> arguments){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'DATE_PICKER',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(title: 'DATE APP'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget{
//   //constructor - key
//   MyHomePage({Key? key, this.title}):super(key: key);

//   final String? title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage>{
//   var _date = null;

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!, style: TextStyle( color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40)),
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: _selectDate, 
//               child: Text('SELECT DATE'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 foregroundColor: Colors.white,
//               ),),
//               Padding(padding: EdgeInsets.all(10)),
//               const Text('The selected date is: '),
//               Padding(padding: EdgeInsets.all(10)),
//               Text(
//                 _date == null ? '' : '${_date.day}/${_date.month}/${_date.year}',
//                 style: _date == null ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
//               ), 
//       ],)),
//     );
//   }

//   Future _selectDate() async{
//     DateTime? _selectedDate = await showDatePicker(
//       context: context,
//        initialDate: DateTime.now(),
//         firstDate: DateTime(2000),
//          lastDate: DateTime.now(),
//          );
//       setState(() {
//         if(_selectedDate != null){
//           _date = _selectedDate;
//         }
//       });
//   }
// }