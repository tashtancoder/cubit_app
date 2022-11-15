import 'package:flutter/material.dart';

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
      home: CubitView(),
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
      body: Center(
        child: Text(
          'Hello Cubit App'
        ),
      ),

      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => print('hi'),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => print('hi'),
              child: const Icon(Icons.remove),
            )

          ],
        ),
      )
    );
  }
  
}