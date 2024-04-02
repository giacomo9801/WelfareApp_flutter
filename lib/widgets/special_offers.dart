import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 138, 148, 166),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Da non perdere',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            child: SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  final offer = offers[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 150,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            offer
                                .imageUrl, // Using Image.network with offer.imageUrl
                            width: 150,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            offer.title,
                            style: const TextStyle(
                              color: Color(0xFF091125),
                              fontSize: 10,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            offer.subtitle,
                            style: const TextStyle(
                              color: Color(0xFF091125),
                              fontSize: 14,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            offer.extraText,
                            style: const TextStyle(
                              color: Color(0xFFA7AEBE),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Offer {
  final String title;
  final String subtitle;
  final String extraText;
  final String imageUrl; // This will now hold the URL of the image

  Offer({
    required this.title,
    required this.subtitle,
    required this.extraText,
    required this.imageUrl,
  });
}

final List<Offer> offers = [
  Offer(
      title: 'Roma',
      subtitle: 'Visita Medica generica',
      extraText: 'Nome fornitore',
      imageUrl:
          'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'), // Replace with your image URLs
  Offer(
      title: 'Roma',
      subtitle: 'Analisi del sangue',
      extraText: 'Nome fornitore',
      imageUrl:
          'https://images.unsplash.com/photo-1638271522560-a247d127deb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1315&q=80'), // Replace with your image URLs
  Offer(
      title: 'Roma',
      subtitle: 'Visita specialistica',
      extraText: 'Nome fornitore',
      imageUrl:
          'https://images.unsplash.com/photo-1584820927498-cfe5211fd8bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80'), // Replace with your image URLs
  Offer(
      title: 'Roma',
      subtitle: 'Tac completa',
      extraText: 'Nome fornitore',
      imageUrl:
          'https://images.unsplash.com/photo-1638202993928-7267aad84c31?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80'), // Replace with your image URLs
];
