import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  // Array di icone per i riquadri
  final List<IconData> icons = [
    Icons.shopping_cart_outlined,
    Icons.gas_meter_outlined,
    Icons.gamepad_outlined,
    Icons.airline_seat_flat_outlined,
    Icons.sports_football_outlined,
    Icons.home_outlined,
  ];

  HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icons
            .length, // Numero di elementi basato sulla lunghezza dell'array di icone
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFE8E8E8),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Center(
                child: Icon(
                  icons[index], // Icona differente per ogni riquadro
                  color: Colors.blue,
                  size: 40,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
