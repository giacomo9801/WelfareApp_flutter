import 'package:flutter/material.dart';
import 'package:welfareapp/widgets/voucher.dart';
import 'widgets/navbar.dart';
import 'widgets/info_box.dart';
import 'widgets/horizontal_list.dart';
import 'widgets/voucher_list.dart';
import 'widgets/recommended_vouchers.dart';
import 'widgets/special_offers.dart';
import 'widgets/title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBar(),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.lightBlue[200],
        backgroundColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.card_giftcard_outlined),
            icon: Icon(Icons.card_giftcard),
            label: 'B. acquisto',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmarks_outlined),
            icon: Icon(Icons.bookmarks),
            label: 'Voucher',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.receipt_long_outlined),
            icon: Icon(Icons.receipt_long),
            label: 'Rimborsi',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.payments_outlined),
            icon: Icon(Icons.payments),
            label: 'Versamenti',
          ),
        ],
      ),
      body: <Widget>[
        SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 210, 220, 244),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const InfoBox(),
                const TitlePers(title: 'Buoni acquisto'),
                HorizontalList(),
                const Row(
                  children: [
                    TitlePers(title: 'Buoni acquisto in evidenza'),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 1),
                      child: Text(
                        'Vedi tutte',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF2B50B0),
                          fontSize: 13,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                const VoucherList(),
                const TitlePers(title: 'Voucher Consigliati'),
                const RecommendedVouchers(),
                const TitlePers(title: 'Goditi ogni attimo'),
                const SpecialOffers(),
                const TitlePers(title: ''),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Pagina 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Voucher(),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Pagina 4'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Pagina 5'),
        ),
      ][currentPageIndex],
    );
  }
}
