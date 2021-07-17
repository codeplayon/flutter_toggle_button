import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> _selections = List.generate(4, (_) => false);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Flutter Tutorial - Codeplayom.com')),
          ),
          body: ListView(children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                child: ToggleButtons(
                  children: <Widget>[
                    Icon(Icons.home_filled),
                    Icon(Icons.home_repair_service),
                    Icon(Icons.add_location),
                    Icon(Icons.payment),
                  ],
                  isSelected: _selections,
                  onPressed: (int index) {
                    setState(() {
                      _selections[index] = !_selections[index];
                    });
                  },
                ))
          ]),
        ));
  }
}
