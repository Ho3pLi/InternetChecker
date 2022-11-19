import 'package:check_internet/GetStarted/getStarted.dart';
import 'package:check_internet/Home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
      '/': (context) => GetStarted(),
      '/second': (context) => Home(),
  },
    );
  }
}