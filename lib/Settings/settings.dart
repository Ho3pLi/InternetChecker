import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: const [
              SizedBox(
                height: 16,
                width: 16,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  "Network",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff848588),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Default Gateway (DFGW)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.router, color: Colors.white, size: 24),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xff808080), size: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Wide Area Network (WAN)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.route_rounded, color: Colors.white, size: 24),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xff808080), size: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Virtual Private Network (VPN)",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.vpn_lock, color: Colors.white, size: 24),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xff808080), size: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Internet",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.language, color: Colors.white, size: 24),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xff808080), size: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
