import 'package:flutter/material.dart';

class RecommendedVouchers extends StatelessWidget {
  const RecommendedVouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 15,
            crossAxisSpacing: 6),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Parte superiore della card: immagine
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.network(
                    'https://picsum.photos/126/80?random=1',
                    height: 120, // altezza dell'immagine
                    fit: BoxFit.cover, // per riempire lo spazio disponibile
                  ),
                ),
                // Parte inferiore della card: titolo e sottotitolo
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Roma',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 13),
                      ),
                      Text(
                        '\nWeekend Relax',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 2),
                        child: Row(
                          children: [
                            Icon(Icons.local_activity,
                                color: Colors
                                    .black), // Inserisci l'icona desiderata
                            SizedBox(
                                width:
                                    8), // Aggiunge uno spazio tra l'icona e il testo
                            Text("Tanto svago",
                                style: TextStyle(
                                    // Inserisci il testo desiderato
                                    color: Color.fromARGB(255, 138, 148, 166),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
