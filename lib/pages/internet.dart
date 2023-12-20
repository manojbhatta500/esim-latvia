import 'package:esim/widgets/internet_tab/current_esim.dart';
import 'package:esim/widgets/show_balance.dart';
import 'package:flutter/material.dart';

class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/pictures/profile.png'),
                    radius: 25,
                    backgroundColor: Colors.white,
                  )
                ],
              ),
              const ShowBalance(),
              Container(
                margin: EdgeInsets.all(8),
                child: const Text(
                  'My current eSIMs',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CurrentEsim(
                  coverage: 'georgia', remainingdata: '0.754', timeleft: '7')
            ],
          ),
        ),
      ),
    ));
  }
}
