import 'package:flutter/material.dart';

class wanInfo extends StatefulWidget {
  const wanInfo({super.key});

  @override
  MywanInfoState createState() => MywanInfoState();
}

class MywanInfoState extends State<wanInfo> {
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
          "Wide Area Network",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color:  Colors.white,
          onPressed:() {
            Navigator.pushNamed(context, '/eighth');
          },
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding( 
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Icon(
                  Icons.route_rounded,
                  size: 70,
                  color: Colors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "C'è un'icona verde, cosa significa?",
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
                  "L'icona verde accanto alla scritta 'DFGW' indica che la connessione verso il default gateway non ha problemi.",
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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "C'è un'icona rossa, cosa significa?",
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
                  "L'icona rossa accanto alla scritta 'DFGW' indica che la connessione verso il default gateway non è stata verificata.\nQuesto accade nel caso in cui il dispositivo non sia connesso ad una rete WiFi.",
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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "C'è un'icona arancione, cosa significa?",
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
                  "L'icona arancione accanto alla scritta 'DFGW' indica che la connessione verso il default gateway risulta avere alcuni problemi.",
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
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "A cosa serve verificare la connessione\ntra il mio dispositivo e il Default Gateway?",
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
                  "Se i ping al Default Gateway vanno a buon fine, significa che il tuo dispositivo è connesso correttamente alla tua rete Internet e che la comunicazione tra il tuo dispositivo e il router funziona senza problemi.\nIn altre parole, è come se ci fosse una strada aperta tra il tuo dispositivo e il router.\nSe il ping non va a buon fine, potrebbe esserci un problema di connessione tra il tuo dispositivo e il router, che dovresti risolvere per accedere ad Internet correttamente.",
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
            ],
          ),
        ),
      ),
    );
  }
}
