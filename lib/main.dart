import 'dart:developer';
import 'package:check_internet/Info/dfgwInfo.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:check_internet/GetStarted/getStarted.dart';
import 'package:check_internet/Home/home.dart';
import 'package:check_internet/Results/cResults.dart';
import 'package:check_internet/Results/categoryResults.dart';
import 'package:check_internet/Results/dfgwResults.dart';
import 'package:check_internet/Results/internetResults.dart';
import 'package:check_internet/Results/wanResults.dart';
import 'package:check_internet/Info/genInfo.dart';
import 'package:check_internet/Settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Classes/networkInfo.dart';
import 'Global/globals.dart' as globals;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const App());
}

// TODO rendere gli spazi delle pubblicitá dinamici in base al dispositivo

class App extends StatelessWidget {
  const App({super.key});

  Future<void> setIsConnected() async {
    var isConnected = await Network().checkConnectivityState();
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
      '/seventh':(context) => const internetResults(),
      '/eighth':(context) => const Info(),
      '/nineth':(context) => const Settings(),
      '/tenth':(context) => const dfgwInfo(),
      },
    );
  }
}