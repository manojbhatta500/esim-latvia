import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/guide_widgets/installEsim.dart';
import 'package:flutter/material.dart';

class Fast extends StatefulWidget {
  const Fast({super.key});

  @override
  State<Fast> createState() => _FastState();
}

class _FastState extends State<Fast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Follow these steps to seamlessly install eSIM',
              style: blackmiddle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const InstallESIMProfileWidget()
          ],
        ),
      ),
    );
  }
}
