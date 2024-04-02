import 'package:flutter/material.dart';

class VoucherList extends StatelessWidget {
  const VoucherList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8.0), // Angoli arrotondati
                  child: Container(
                    width: 180,
                    height: 120,
                    color: Colors.white,
                    child: Image(
                      image: NetworkImage(
                          'https://picsum.photos/126/80?random=$index'),
                      fit: BoxFit.cover, // Per adattare l'immagine alla card
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class VoucherCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const VoucherCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(title),
          Text(subtitle),
          const Row(
            children: [
              Icon(Icons.star),
              Text('Valutazione'),
            ],
          ),
        ],
      ),
    );
  }
}
