import 'package:check_internet/Classes/Ping.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Internet Checker",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.white, size: 24),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.only(left: 0, top: 100),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView(children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.router, size: 40, color: Colors.white),
                Text("DFGW", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.route_rounded, size: 40, color: Colors.white),
                Text("WAN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.vpn_lock, size: 40, color: Colors.white),
                Text("VPN", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.language, size: 40, color: Colors.white),
                Text("INTERNET", style: TextStyle(color: Colors.white, fontSize: 20))
              ],),),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),),
          )),
          Center(child: ElevatedButton(
            onPressed: () {
              Pinger().ping();
            },
            child: Text('Start Checking', style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),)
        ],
      ),
      );
  }
}