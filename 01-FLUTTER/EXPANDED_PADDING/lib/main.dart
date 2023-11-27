import 'package:expanded_padding/main4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stepper',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'STEPPER APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? //nullable
      title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Step> steps = [
    Step(title: Text('BOX 1'), content: Text('CONST BOX 1')),
    Step(title: Text('BOX 2'), content: Text('CONST BOX 2')),
    Step(title: Text('BOX 3'), content: Text('CONST BOX 3')),
    Step(title: Text('BOX 4'), content: Text('CONST BOX 4')),
    Step(title: Text('BOX 5'), content: Text('CONST BOX 5')),
  ];

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title!,
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Stepper', style: Theme.of(context).textTheme.bodyMedium),
          Stepper(
            steps: steps,
            currentStep: _currentStep,
            onStepContinue: _nextStep,
            onStepCancel: _beforeStep,
          ),
        ]),
      ),
    );
  }

  void _nextStep() {
    setState(() {
      _currentStep++;
      if (_currentStep > 5) {
        print('NO MORE STEPS');
      }
    });
  }

  void _beforeStep() {
    setState(() {
      _currentStep--;
      if (_currentStep < 1) {
        print('NO MORE PREVIOUS STEPS');
      }
    });
  }
}
