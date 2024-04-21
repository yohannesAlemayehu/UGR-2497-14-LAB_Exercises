import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CountBloc(),
      child: MyApp(),
    ),
  );
}

// Define Event Type
abstract class CountEvent extends Equatable {
  const CountEvent();

  @override
  List<Object?> get props => [];
}

class IncrementEvent extends CountEvent {}

class DecrementEvent extends CountEvent {}


class CountState extends Equatable {
  final int count;

  const CountState(this.count);

  @override
  List<Object?> get props => [count];
}


class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(const CountState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CountState(state.count + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(CountState(state.count - 1));
    });
  }
}

// Provide Bloc on Widget Tree
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

// Consume Bloc in the Widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            BlocBuilder<CountBloc, CountState>(
              builder: (context, state) {

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.read<CountBloc>().add(IncrementEvent());
                          },
                          child: Icon(Icons.add),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.read<CountBloc>().add(DecrementEvent());
                          },
                          child: Icon(Icons.remove),
                        ),
                      ],
                    ),
                    Text(
                      state.count.toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


