import 'package:flutter/material.dart';

class statsInfo extends StatefulWidget {
  const statsInfo({super.key});

  @override
  MyStatsInfoState createState() => MyStatsInfoState();
}

class MyStatsInfoState extends State<statsInfo> {
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
          "Domain Name System",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Colors.white,
          )
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color:  Colors.white,
          onPressed:() {
            Navigator.pushNamed(context, '/third');
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
                  Icons.dns,
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
                  "Un server DNS (Domain Name System) è un tipo di computer che aiuta a tradurre gli indirizzi web (come www.google.com) in indirizzi IP (come 216.58.194.174) utilizzati dalle macchine per connettersi a Internet.\nIn pratica, quando inserisci un nome di dominio nella barra degli indirizzi del tuo browser, il tuo dispositivo invia una richiesta al server DNS per tradurre il nome di dominio in un indirizzo IP che viene utilizzato per accedere al sito web.\nIl server DNS restituisce quindi l'indirizzo IP corrispondente, consentendo al tuo dispositivo di connettersi al sito web.Un server DNS è essenziale per la navigazione su Internet perché ci permette di accedere ai siti web utilizzando i nomi di dominio che ci sono più familiari, invece di dover ricordare gli indirizzi IP complessi.",
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
                  "L'icona verde accanto alla scritta 'DNS' indica che la connessione verso il server dns non ha problemi.",
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
                  "L'icona arancione accanto alla scritta 'DNS' indica che la connessione verso il server DNS risulta avere alcuni problemi.",
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
                      "A cosa serve verificare la connessione\ntra il mio dispositivo e il server DNS?",
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
                  "Se i ping al server DNS vanno a buon fine, significa che il tuo dispositivo è in grado di comunicare con il server DNS e che la connessione di rete tra il tuo dispositivo e il server DNS funziona correttamente.\nIl ping al server DNS è uno dei test che si effettuano per verificare la connessione di rete e risolvere eventuali problemi di connettività.\nSe il ping al server DNS non va a buon fine, potrebbe esserci un problema nella connessione tra il tuo dispositivo e il server DNS, ad esempio un cavo Ethernet scollegato, una configurazione di rete errata o un problema con il server DNS stesso.\nIn questo caso, dovrai verificare la tua configurazione di rete e risolvere il problema per ripristinare la connessione di rete.",
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
