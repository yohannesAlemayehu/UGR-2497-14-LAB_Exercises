import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';  // Ensure correct import

// Define your ChangeNotifier class


final counterProvider = ChangeNotifierProvider((ref) => Counter());


void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            final counter = ref.watch(counterProvider);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => counter.increment(),  // Correct invocation
                      child: const Icon(Icons.add),
                    ),
                    ElevatedButton(
                      onPressed: () => counter.decrement(),
                      child: const Icon(Icons.remove),
                    ),
                  ],
                ),
                Text(
                  '${counter.count}',  // Proper use of watch
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}