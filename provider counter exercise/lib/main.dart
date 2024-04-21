

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:(context) => CountModel(),
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Consumer<CountModel>(builder: (context, value, child)=> Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  final Counter = context.read<CountModel>();
                  Counter.increment();

                }, child: Icon(Icons.add)),
                ElevatedButton(onPressed: (){
                  final Counter = context.read<CountModel>();
                  Counter.decrement();
                }, child: Icon(Icons.remove)),
              ],
            ),

            Text(
              value.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}
class CountModel extends ChangeNotifier{
  int _count = 0;
  int get count => _count;
  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }
}
