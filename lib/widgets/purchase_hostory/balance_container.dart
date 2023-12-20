import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        child: Container(
            width: 300.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 0.25),
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.black12, width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Apple pay ',
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontFamily: 'Inter',
                            fontSize: 16.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '12 aug. 2023, 09:17',
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            '4.00€',
                            style: TextStyle(
                                color: Color(0xff1AC221),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/icons/arrow.png',
                            width: 30,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
