import 'package:flutter/material.dart';
import 'package:welfareapp/widgets/navbar.dart';
import 'package:welfareapp/widgets/sportlink.dart';
import 'package:welfareapp/widgets/vouchersgym.dart';

class Gym extends StatelessWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: NavBar(),
      ),
      body: Container(
        color: const Color.fromARGB(255, 210, 220, 244),
        child: Column(
          children: [
            // Distanza tra il testo e il Container
            Container(
              width: double.maxFinite,
              height: 55,
              decoration: const BoxDecoration(color: Color(0xFFFFEDD5)),
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Palestre e centri sportivi',
                  style: TextStyle(
                    color: Color(0xFFF97316),
                    fontSize: 18,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    height: 2,
                  ),
                ),
              ),
            ),
            const SportLink(),
            const Divider(
              color: Color.fromARGB(255, 138, 148, 166),
              height: 5,
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: VouchersGym(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
