import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final bool showBackButton;

  // che determina se mostrare o meno il pulsante di ritorno
  const NavBar({Key? key, this.showBackButton = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 43, 80, 176),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            )
          : null, // Se showBackButton è false, non mostrare nulla
      title: Row(
        children: [
          //inserisci icona
          if (!showBackButton) // Se showBackButton è false, mostra l'icona flutter_dash_outlined
            const Icon(Icons.flutter_dash_outlined, color: Colors.white),
          if (!showBackButton) // Se showBackButton è false, aggiungi spazio
            const SizedBox(width: 8), // Spazio tra l'immagine e il titolo
          const SizedBox(width: 0), // Spazio tra l'immagine e il titolo

          // Titolo
          const Text(
            'Welfare ',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(), // Spazio per spingere le icone a destra

          // Icone pulsante a destra
          IconButton(
            icon: const Icon(Icons.favorite_outline, color: Colors.white),
            onPressed: () {
              // Azione quando si preme l'icona di ricerca
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {
              // Azione quando si preme l'icona delle notifiche
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_box_outlined, color: Colors.white),
            onPressed: () {
              // Azione quando si preme l'icona delle impostazioni
            },
          ),
        ],
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(50);
}
