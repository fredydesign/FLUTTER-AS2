import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FREDY APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      
      home: MyHomePage(title: 'CAMERA APP'),
    );
    

  }
}

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);
  @override
  _MHS createState() => _MHS();
}

class _MHS extends State<MyHomePage> {

 XFile? _imageFile;
 dynamic _pickImageError;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          
          title: Text(
            widget.title!,
            
          )),
      body: _visualizarImagen(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.photo_library
            ),
            onPressed: (){
              _onImageButtonPressed(ImageSource.gallery);
            
            }
            ),
          Padding(padding: EdgeInsets.all(10)),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(
              Icons.photo_camera,
            ),
            onPressed:  () {
              _onImageButtonPressed(ImageSource.camera);
            }
            )
        ],
      ),

    );
  }

  Widget _visualizarImagen(){
    if(_imageFile != null){
      return Image.file(File(_imageFile!.path));
    }else if(_pickImageError != null){
      return Text(
        'Error de recuperación de la imagen: ${_pickImageError}',
        textAlign: TextAlign.center,
      );
    }else{
      return Text(
        'No hay imagen',
        textAlign: TextAlign.center,
      );
    }
    // return Container();
  }

  Future _onImageButtonPressed(ImageSource source) async{
    try{
      _imageFile = await ImagePicker().pickImage(
        source: source
        );
        setState(() {
          
        });
    }catch(e){
      _pickImageError = e;
    }
  }
}
