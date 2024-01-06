import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'comidas2.dart';

void main(List<String> arguments) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMIDAS APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      
      home: MyHomePage(title: 'FOOD APP'),
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

  List _comidas = [
    Comida('Jamón', 'Entrante', Image.network('https://img.freepik.com/foto-gratis/jamon-serrano-espanol-palitos-pan-sobre-fondo-negro_123827-21585.jpg?w=740&t=st=1703851291~exp=1703851891~hmac=987876f4ffd4a3aa8b7d3470d81c46d4e59b74f0b5f66c0ca2ad9a36d25c7a50')),
    Comida('Atún', 'Pescado', Image.network('https://img.freepik.com/foto-gratis/filete-atun-parrilla-verduras-vista-cercana_1147-576.jpg?w=900&t=st=1703851644~exp=1703852244~hmac=0e5c25a330401ddca036e103767fc502adf96ba72fe2e89252167e8d324de4aa')),
    Comida('Bizcocho', 'Postre', Image.network('https://img.freepik.com/fotos-premium/bizcocho-casero-delicioso_154293-289.jpg?w=900')),
    Comida('Costillas', 'Carne', Image.network('https://img.freepik.com/foto-gratis/costillas-calientes-parrilla-salsa-barbacoa-fuego-ai-generativo_123827-23822.jpg?w=900&t=st=1703851613~exp=1703852213~hmac=af387aec9f092af031788a35169a8d9d08ec2ce837c263d3c4138ba1b4b9dbec')),
    Comida('Crepe', 'Postre', Image.network('https://img.freepik.com/foto-gratis/crepe-jarabe-chocolate-cacao-plato-blanco-sobre-fondo-blanco_114579-2912.jpg?w=900&t=st=1703851594~exp=1703852194~hmac=67cd9825e0b0f7c6ccf9915c792dd308c483ad67f8e95d1955650971b2d4a3c6')),
    Comida('Durum', 'FAST-FOOD', Image.network('https://img.freepik.com/foto-gratis/tres-arepas-delicioso-relleno_23-2148742378.jpg?w=900&t=st=1703851569~exp=1703852169~hmac=87424c67a3dd7295632b206b024976162970b4d811109aba000f94c1da1e83f6')),
    Comida('Hamburguesa', 'FAST-FOOD', Image.network('https://img.freepik.com/foto-gratis/vista-frontal-hamburguesa-stand_141793-15542.jpg?size=626&ext=jpg&ga=GA1.1.263523422.1703851275&semt=ais')),
    Comida('Pizza', 'FAST-FOOD', Image.network('https://img.freepik.com/foto-gratis/primer-plano-deliciosa-pizza_23-2150852103.jpg?size=626&ext=jpg&ga=GA1.1.263523422.1703851275&semt=sph')),
    Comida('Salmón', 'Pescado', Image.network('https://img.freepik.com/foto-gratis/filetes-salmon-cocidos_144627-30619.jpg?w=740&t=st=1703851484~exp=1703852084~hmac=e67dc47f36e956c65d3529bb169b78e87e9c7cfb0155fab3f0cd22434c638603')),
    Comida('Sandwich', 'FAST-FOOD', Image.network('https://img.freepik.com/fotos-premium/primer-plano-dos-sandwiches-tocino-salami-jamon-verduras-frescas-tabla-cortar-madera-rustica-concepto-club-sandwich_107989-286.jpg?size=626&ext=jpg&ga=GA1.1.263523422.1703851275&semt=sph')),
    Comida('Sardinas', 'Pescado', Image.network('https://img.freepik.com/foto-gratis/caballa-pescado-crudo-placa-corte-aislado-sobre-fondo-blanco_123827-26016.jpg?size=626&ext=jpg&ga=GA1.1.263523422.1703851275&semt=sph')),
    Comida('Solomillo', 'Carne', Image.network('https://img.freepik.com/foto-gratis/filete-carne-cruda-cocida-rodajas-sal-agregada-servida-mesa-negra_114579-7237.jpg?t=st=1703851781~exp=1703852381~hmac=14827f9d4de83cb8f55eab7a1aa17f3ccf288dc9b758701e802262d1f163beac')),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.white,
          title: Text(
            widget.title!,
            // style: TextStyle(color: Colors.black),
          )),
      body: ListView.builder(
        itemCount: _comidas.length,
        itemBuilder: (context, index){
          final item = _comidas[index];
          return Dismissible(
            direction: DismissDirection.startToEnd,
            key: Key(item.nombre),
            background: Container(
              child: Icon(
                Icons.delete,
                size: 40,
                color: Colors.white,
              ),
              color: Colors.cyan,
            ),
            onDismissed: (direction){
              setState(() {
                _comidas.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: 
                    Text('${item.nombre} ha sido borrado')
                  )
                );
              });
            },
            child: Card(
              color: Colors.grey[0],
              elevation: 5,
              child: Container(

                height: 70,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyan[100]!,
                      blurRadius: 10,
                      offset: Offset(-15, 33)
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.cyan[100]!, Colors.cyan[600]!],
                  )
                ),
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${item.nombre}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '${item.categoria}',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      
                    ],
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                       builder: (BuildContext context){
                        return AlertDialog(
                          backgroundColor: Colors.cyan,
                          title: Text('${item.nombre}', style: TextStyle(
                            color: Colors.white,
                          ),),
                          content: item.imagen,
                        );
                       });
                  },
                ),
              ),
            ),
          ); 
        })
      
    );
  }
}

