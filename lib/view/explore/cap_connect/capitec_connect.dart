import 'package:flutter/material.dart';

import '../../../utils/constant/list_of_richtext.dart';
import '../../../utils/constant/list_of_strings.dart';
import '../../../utils/constant/list_of_text.dart';

class CapitecConnect extends StatelessWidget {
  CapitecConnect({super.key});

  final ListOfStrings _listOfStrings = ListOfStrings();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.white,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 15),
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Low prepaid prices",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListOfText(
                      itemCount: _listOfStrings.lowPrices.length,
                      text: _listOfStrings.lowPrices),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Flat Rate",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListOfRichText(
                      itemCount: _listOfStrings.flatRates.length,
                      text: _listOfStrings.flatRates),
                  const Text(
                    "No expiry",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
