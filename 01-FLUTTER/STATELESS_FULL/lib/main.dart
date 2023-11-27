import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'counter_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROVIDER',
      home: ChangeNotifierProvider(
        create: (_) => CounterProvider(10),
        child: MyHome(title: 'PROVIDER APP'),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  MyHome({Key? key, this.title}) : super(key: key);
  final String? title;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    final _counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(title!),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('PUSH THE BUTTON'),
            Text(
              '${_counterProvider.counter}',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _counterProvider.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }
}
