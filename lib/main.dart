import 'package:flutter/material.dart';
import 'package:her_saarthi/screens/homescreen.dart';
import 'package:her_saarthi/screens/startscree.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Widget screen;
  void changeScreen() {
    setState(() {
      screen = const HomeScreen();
    });
  }

  @override
  void initState() {
    screen = StartScreen(
      changeScreen: changeScreen,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screen,
      ),
    );
  }
}
