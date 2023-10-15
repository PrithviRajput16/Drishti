import 'package:flutter/material.dart';
import 'package:her_saarthi/screens/homescreen.dart';
import 'package:her_saarthi/screens/login.dart';
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
  late List<Widget> screens;
  late Widget screen;
  void changeScreen(int index) {
    setState(() {
      screen = screens[index];
    });
  }

  @override
  void initState() {
    screens = [ Login(changeScreen: changeScreen), const HomeScreen(), StartScreen(changeScreen: changeScreen)];
    screen = StartScreen(
      changeScreen: changeScreen,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: MapSample(),
        body: screen,
      ),
    );
  }
}
