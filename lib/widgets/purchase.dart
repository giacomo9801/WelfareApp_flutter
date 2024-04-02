import 'package:flutter/material.dart';
import 'package:welfareapp/widgets/navbar.dart';

class Purchase extends StatelessWidget {
  const Purchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Immagine centrale
            Image.network(
              'https://picsum.photos/200/100?random=1', // Sostituisci con l'URL della tua immagine
              height: 150, // Puoi modificare la dimensione come desideri
              width: 150, // Puoi modificare la dimensione come desideri
            ),
            // Scritta "Acquisto effettuato con successo"
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Acquisto effettuato con successo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333232),
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )),
            // Box colorato con messaggio
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 230, 236, 249), // Sostituisci con il colore desiderato
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                  'Riceverai una email con il voucher e le indicazioni per utilizzarlo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 66, 107, 209),
                  )),
            ),
            // Pulsante "Continua ad acquistare"
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 43, 80, 176)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  // Azione da eseguire quando il pulsante viene premuto
                },
                child: const Text('Continua ad acquistare'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
