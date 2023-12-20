import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';

class ShowBalance extends StatefulWidget {
  const ShowBalance({super.key});

  @override
  State<ShowBalance> createState() => _ShowBalanceState();
}

class _ShowBalanceState extends State<ShowBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Balance:',
                style: navigatorText,
              ),
              Text(
                '54.3€',
                style: blackbig,
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xffF6A84C)),
              child: Text(
                'Topup balance',
                style: whitenormal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
