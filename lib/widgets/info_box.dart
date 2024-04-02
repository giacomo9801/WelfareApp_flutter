import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      // Contenitore principale con bordi arrotondati
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Prima riga con icona e "Budget disponibile"
                  Row(
                    children: [
                      Icon(Icons.wallet_giftcard, color: Colors.blue),
                      SizedBox(width: 8), // Spazio tra icona e testo
                      Text('Budget disponibile',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8), // Spazio tra le due righe
                  // Seconda riga con "Prima scadenza" e data
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 32),
                        child: Text('Prima scadenza',
                            style: TextStyle(color: Colors.grey, fontSize: 10)),
                      ),
                      SizedBox(width: 8), // Spazio tra i due testi
                      Text('12/2022',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            // Riquadro dell'importo con sfondo blu
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 236, 249),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '570.00€',
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 80, 176),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
