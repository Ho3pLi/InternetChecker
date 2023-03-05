import 'package:flutter/material.dart';

class dfgwInfo extends StatefulWidget {
  const dfgwInfo({super.key});

  @override
  MydfgwInfoState createState() => MydfgwInfoState();
}

class MydfgwInfoState extends State<dfgwInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "DFGW details",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 24,
        ),
        actions: [
          const Icon(Icons.search, color: Color(0xff212435), size: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Icon(Icons.abc),
            ),
            // Padding(
            //   padding: EdgeInsets.all(16),
            //   child:

            //       ///***If you have exported images you must have to copy those images in assets/images directory.
            //       Image(
            //     image: NetworkImage(
            //         "https://cdn.pixabay.com/photo/2017/08/06/15/44/house-2593570_960_720.jpg"),
            //     height:
            //         MediaQuery.of(context).size.height * 0.35000000000000003,
            //     width: MediaQuery.of(context).size.width,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(0),
            //   padding: EdgeInsets.all(0),
            //   width: MediaQuery.of(context).size.width,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     color: Color(0xffffffff),
            //     shape: BoxShape.rectangle,
            //     borderRadius: BorderRadius.zero,
            //   ),
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     padding: EdgeInsets.all(16),
            //     shrinkWrap: true,
            //     physics: ClampingScrollPhysics(),
            //     children: [
            //       ///***If you have exported images you must have to copy those images in assets/images directory.
            //       Image(
            //         image: NetworkImage(
            //             "https://cdn.pixabay.com/photo/2017/08/06/15/44/house-2593570_960_720.jpg"),
            //         height: 30,
            //         width: 70,
            //         fit: BoxFit.cover,
            //       ),
            //       Padding(
            //         padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            //         child:

            //             ///***If you have exported images you must have to copy those images in assets/images directory.
            //             Image(
            //           image: NetworkImage(
            //               "https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg"),
            //           height: 60,
            //           width: 70,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            //         child:

            //             ///***If you have exported images you must have to copy those images in assets/images directory.
            //             Image(
            //           image: NetworkImage(
            //               "https://cdn.pixabay.com/photo/2019/04/23/09/04/indoor-4148898_960_720.jpg"),
            //           height: 60,
            //           width: 70,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            //         child:

            //             ///***If you have exported images you must have to copy those images in assets/images directory.
            //             Image(
            //           image: NetworkImage(
            //               "https://cdn.pixabay.com/photo/2018/01/23/16/22/indoors-3101776_960_720.jpg"),
            //           height: 70,
            //           width: 70,
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    "Cos'è?",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "Il Default Gateway è come una porta d'accesso tra la tua rete domestica e Internet.\nQuando il tuo dispositivo cerca di accedere ad un sito web o ad un'applicazione su Internet, il traffico viene inviato attraverso questa porta d'accesso (il Default Gateway) per raggiungere il sito o l'applicazione esterna.\nIn altre parole, il Default Gateway aiuta a far uscire il traffico dalla tua rete locale e ad accedere ad altre reti esterne come Internet.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(16),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "50.00",
            //       textAlign: TextAlign.start,
            //       overflow: TextOverflow.clip,
            //       style: TextStyle(
            //         fontWeight: FontWeight.w700,
            //         fontStyle: FontStyle.normal,
            //         fontSize: 20,
            //         color: Color(0xff000000),
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: MaterialButton(
            //       onPressed: () {},
            //       color: Color(0xff3a57e8),
            //       elevation: 0,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(16.0),
            //       ),
            //       padding: EdgeInsets.all(16),
            //       child: Text(
            //         "Add to Cart",
            //         style: TextStyle(
            //           fontSize: 14,
            //           fontWeight: FontWeight.w700,
            //           fontStyle: FontStyle.normal,
            //         ),
            //       ),
            //       textColor: Color(0xffffffff),
            //       height: 40,
            //       minWidth: 140,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
