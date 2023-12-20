import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/help_screen/lower.dart';
import 'package:esim/widgets/help_screen/upper.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'How we can help you?',
                style: black20,
              ),
            ),
            upper(),
            SizedBox(
              height: 20,
            ),
            lower()
          ],
        ),
      ),
    ));
  }
}
