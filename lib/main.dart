import 'dart:developer';

import 'package:check_internet/GetStarted/getStarted.dart';
import 'package:check_internet/Home/home.dart';
import 'package:check_internet/Results/cResults.dart';
import 'package:check_internet/Results/categoryResults.dart';
import 'package:check_internet/Results/dfgwResults.dart';
import 'package:check_internet/Results/internetResults.dart';
import 'package:check_internet/Results/wanResults.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Classes/checkConnectivity.dart';
import 'Global/globals.dart' as globals;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const App());
}

// TODO rendere gli spazi delle pubblicitá dinamici in base al dispositivo

class App extends StatelessWidget {
  const App({super.key});

  Future<void> setIsConnected () async {
    var isConnected = await CheckConnectivity().checkConnectivityState();
    globals.data.update('isConnected', (value) => isConnected);
  }

  @override
  Widget build(BuildContext context) {
    setIsConnected();
    return MaterialApp(
      title: 'Internet Checker',
      initialRoute: '/',
      routes: {
      '/': (context) => const GetStarted(),
      '/second': (context) => const Home(),
      '/third':(context) => const categoryResults(),
      '/fourth':(context) => const dfgwResults(),
      '/fifth':(context) => const wanResults(),
      '/sixth':(context) => const cResults(),
      '/seventh':(context) => const internetResults()
      },
    );
  }
}