import 'package:flutter/material.dart';

import '../../utils/constant/colours.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .28,
              width: MediaQuery.of(context).size.width,
              decoration: decorationBox(context, 5),
              child: const Column(
                children: [
                  Image(height: 140, image: AssetImage('lib/images/mail.png')),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Recieve all your trasactional messages in the app for free",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.08,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Update"))),
          ],
        ),
      ),
    );
  }
}
