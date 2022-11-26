import 'package:check_internet/GetStarted/getStarted.dart';
import 'package:check_internet/Home/home.dart';
import 'package:check_internet/Results/categoryResults.dart';
import 'package:check_internet/Results/dfgwResults.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const App());
}

// TODO rendere gli spazi delle pubblicitá dinamici in base al dispositivo

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
      '/third':(context) => categoryResults(),
      '/fourth':(context) => dfgwResults(),
      },
    );
  }
}