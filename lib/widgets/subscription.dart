import 'package:flutter/material.dart';
import 'package:welfareapp/widgets/navbar.dart';
import 'package:welfareapp/widgets/purchase.dart';
import 'title.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  String? dropdownValue;
  int? _selectedRadio;

  @override
  void initState() {
    super.initState();
    _selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      _selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://picsum.photos/400/200', // Replace with your image
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      top: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: const LabelWidget(label: 'Atletica'),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 170, left: 10, right: 10),
                      width: double.infinity,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Abb.to annuale palestra",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: _selectedRadio,
                            onChanged: (int? value) {
                              setSelectedRadio(value!);
                            },
                            title: const Text('Abbonamento 12 mesi - 99.00€'),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: _selectedRadio,
                            onChanged: (int? value) {
                              setSelectedRadio(value!);
                            },
                            title: const Text('Abbonamento 12 mesi - 125.00€'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButton<String>(
                                value: dropdownValue,
                                hint: const Text('Seleziona un familiare'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'Persona 1',
                                  'Persona 2'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Da compilare se vuoi assegnare il voucher a un tuo famigliare",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black26),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Icon(Icons.sports_gymnastics,
                                      color: Colors.black),
                                  SizedBox(width: 8),
                                  Text(
                                    'Palestra sotto casa',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 138, 148, 166),
                                        fontSize:
                                            16, // Cambia la dimensione del font qui
                                        fontWeight: FontWeight.bold),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                    width: 30,
                                  ),
                                  Text("Padova"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const TitlePers(title: "Descrizione"),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Che cosè Boscolo Gift? É il modo più semplice e sicuro di regalare (o acquistare) un viaggio o un’esp...',
                        style: TextStyle(fontSize: 16),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            // azione quando "Leggi di più" è premuto
                          },
                          child: const Text(
                            'Leggi di più',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const TitlePers(title: "Fornitore"),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Prima riga: immagine
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.network(
                          'https://picsum.photos/126/80?random=1', // Sostituisci con l'URL della tua immagine
                          width:
                              60, // Puoi modificare la dimensione come desideri
                        ),
                      ),

                      // Seconda riga: titolo
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Palestra sotto casa',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),

                      // Terza riga: tre box bianchi con icone
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoBox(icon: Icons.location_city),
                          InfoBox(icon: Icons.phone),
                          InfoBox(icon: Icons.mail),
                        ],
                      ),

                      // Quarta, quinta, sesta riga: indirizzi casuali
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Padova, Via Uruguay 43 - 35127',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Telefono: +39 049 7620510',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Email: corporatetravel@boscolo.com',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Purchase()),
          );
        },
        label: const Text('Acquista', style: TextStyle(fontSize: 18)),
        backgroundColor: const Color.fromARGB(255, 43, 80, 176),
        elevation: 1, // Rimuove l'ombra
        foregroundColor: Colors.white, // Colore del testo
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

// Widget per il box dell'icona
class InfoBox extends StatelessWidget {
  final IconData icon;

  const InfoBox({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.blue, // Cambia il colore dell'icona come desideri
          ),
        ],
      ),
    );
  }
}
