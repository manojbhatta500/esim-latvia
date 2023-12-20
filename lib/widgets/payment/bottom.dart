import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/payment/show_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: 0.11 * height,
      width: double.infinity,
      color: Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total amount',
                  style: profilemiddle,
                ),
                Text(
                  '€8.5 ',
                  style: blackbig,
                ),
              ],
            ),
            Image.asset(
              'assets/icons/arrow.png',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Color.fromRGBO(217, 217, 217, 0.95))),
                  child: Center(
                    child: Text(
                      'CHANGE METHOD',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      builder: (context) {
                        return ShowPayment();
                      },
                    );
                  },
                  child: Card(
                    elevation: 6,
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white54),
                      ),
                      child: Center(
                          child: Image.asset('assets/pictures/apple_pay.png')),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
