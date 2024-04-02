import 'package:flutter/material.dart';
import 'gymsport.dart';

class Voucher extends StatelessWidget {
  final List<String> labels = [
    'Svago e tempo libero',
    'Esperienze',
    'Palestre e centri sportivi',
    'Viaggi e vacanze',
    'Corsi',
    'Visite specialistiche ed esami diagnostici',
    'Cure odontoiatriche',
    'Ottici',
    'Benessere',
    'Assistenza e previdenza sanitaria',
    'Zainetto sanitario'
  ];

  Voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Voucher',
              style: TextStyle(
                color: Color(0xFF22408B),
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(
                height: 30), // Aggiusta la dimensione come necessario
            Expanded(
              child: ListView.builder(
                itemCount: labels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.primaries[index %
                            Colors.primaries.length], // Colore del bottone
                      ),
                      onPressed: () {
                        if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Gym()),
                          );
                        }
                      },
                      child: Text(labels[index]), // Testo del bottone
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
