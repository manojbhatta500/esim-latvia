import 'package:esim/widgets/purchase_hostory/ref_box.dart';
import 'package:flutter/material.dart';

class Referrals extends StatelessWidget {
  const Referrals({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RefBox(),
            SizedBox(
              height: 10,
            ),
            RefBox(),
            SizedBox(
              height: 10,
            ),
            RefBox(),
            SizedBox(
              height: 10,
            ),
            RefBox(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
