import 'package:flutter/material.dart';

class SportLink extends StatefulWidget {
  const SportLink({super.key});

  @override
  _SportLinkState createState() => _SportLinkState();
}

class _SportLinkState extends State<SportLink> {
  final List<String> links = [
    'Tutti',
    'Top Brand',
    'Atletica',
    'Danza',
    'Soft Fitness',
    'Palestre',
    'Nuoto',
    'Centri sportivi',
    'Tennis',
    'Arti marziali',
    'Crossfit',
  ];

  int selectedIndex = 0; // indice dell'elemento selezionato

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40, // Puoi modificare l'altezza come desideri
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: links.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8.0), // Aggiungi padding come desideri
            child: TextButton(
              style: ButtonStyle(
                // Sottolinea il testo se l'indice corrisponde a selectedIndex
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed) ||
                        index == selectedIndex) {
                      return const TextStyle(
                        decoration: TextDecoration.underline,
                      );
                    }
                    return const TextStyle(); // Usa lo stile di testo normale per gli altri stati
                  },
                ),
              ),
              onPressed: () {
                // Aggiorna l'indice selezionato quando il pulsante viene premuto
                setState(() {
                  selectedIndex = index;
                });
                //print('${links[index]} pressed');
              },
              child: Text(links[index]),
            ),
          );
        },
      ),
    );
  }
}
