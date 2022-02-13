import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
          home: MyApp(),
      ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _random = Random();

  Color _color = const Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Container(
            alignment: Alignment.center,
            child: const Text('Hey there'),
          ),
        ),
      ),
    );
  }
}