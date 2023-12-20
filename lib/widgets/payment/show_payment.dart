import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/payment/payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowPayment extends StatelessWidget {
  const ShowPayment({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Payment methods',
                  style: black20,
                ),
                SizedBox(
                  width: 0.1 * width,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/pictures/circle.svg',
                    height: 50,
                  ),
                )
              ],
            ),
            PaymentMethod(
                title: 'Apple Pay',
                image: 'assets/pictures/apple_pay.png',
                check: true),
            PaymentMethod(
                title: 'Visa/Mastercard',
                image: 'assets/pictures/card.png',
                check: false),
            PaymentMethod(
                title: 'PAYPAL',
                image: 'assets/pictures/PayPal.png',
                check: true),
          ],
        ),
      ),
    );
  }
}
