import 'package:cubit_app/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyCubitApp());
}

class MyCubitApp extends StatelessWidget {
  const MyCubitApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Cubit Application',
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CubitView(),
      ),
    );
  }

}

class CubitView extends StatefulWidget {
  @override
  CubitViewState createState() {
    // TODO: implement createState
    return CubitViewState();
  }
  
}

class CubitViewState extends State<CubitView>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit App'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (BuildContext context, state) {
          return Center(
            child: Text(
              'Count is $state'
            ),
          );
        },

      ),

      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            )

          ],
        ),
      )
    );
  }
  
}