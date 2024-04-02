//crea una classe che mi genera il titolo in base al parametro passato

import 'package:flutter/material.dart';

class TitlePers extends StatelessWidget {
  final String title;

  const TitlePers({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Color(0xFF22408B),
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
