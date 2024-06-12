import 'package:flutter/material.dart';
import '../../shared/add_beneficiary_container.dart';
import '../../shared/single_tab_scafold.dart';
import 'add_beneficiary.dart';

class PayBeneficiary extends StatelessWidget {
  const PayBeneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Pay Beneficiary"),
        bodyWidget: Column(
          children: [
            AddBeneficiary(
              page: AddBeneficiaryPayBeneficiary(),
            ),
            const SizedBox(height: 20),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              height: 120,
              child: const Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Search",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                  Divider(
                    endIndent: 15,
                    indent: 10,
                    height: .2,
                    thickness: 0.5,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Theme.of(context).colorScheme.primaryContainer,
            )
          ],
        ));
  }
}
