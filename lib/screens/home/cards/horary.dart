import 'package:flutter/material.dart';

class Horary extends StatelessWidget {
  const Horary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Horários',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
                width: 1000,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(('De segunda a quinta: '),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(('08h ás 17h'), style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(('Sexta: '),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(('08h ás 16h'), style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    SizedBox(width: 10),
                  ],
                )),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
