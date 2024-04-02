import 'package:flutter/material.dart';
import 'package:welfareapp/widgets/subscription.dart';

class VouchersGym extends StatelessWidget {
  const VouchersGym({Key? key}) : super(key: key);

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
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: index == 0
                ? () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const Subscription()),
                    );
                  }
                : null, // rende cliccabile solo la card con indice 0
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      // Parte superiore della card: immagine
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(8)),
                        child: Image.network(
                          'https://picsum.photos/126/80?random=$index',
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Etichette per i primi due elementi
                      if (index == 0) const LabelWidget(label: 'Atletica'),
                      if (index == 1) const LabelWidget(label: 'Danza'),
                    ],
                  ),
                  // Parte inferiore della card: titolo e sottotitolo
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Roma',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        Text(
                          index == 0
                              ? 'Abbonamento annuale palestra'
                              : '\nWeekend Relax',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 2),
                          child: Row(
                            children: [
                              const Icon(Icons.local_activity,
                                  color: Colors.black),
                              const SizedBox(width: 8),
                              Text(
                                index == 0
                                    ? 'Palestra sotto casa'
                                    : 'Tanto svago',
                                style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 138, 148, 166),
                                    fontSize: index == 0
                                        ? 12
                                        : 16, // Cambia la dimensione del font qui
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String label;

  const LabelWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 237, 213, 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Color.fromRGBO(249, 115, 22, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
