import 'package:flutter/material.dart';

class PlanContainer extends StatelessWidget {
  const PlanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        child: Container(
            width: 320.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 0.25),
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.black12, width: 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kargi Mobile / eSIM - Georgia',
                          style: TextStyle(
                            color: Color(0xff181D27),
                            fontFamily: 'Inter',
                            fontSize: 16.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(
                        '7 d. - Validity period',
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '1 GB - Traffic',
                        style: TextStyle(
                          color: Colors.black45,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '16 aug. 2023, 09:17',
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
                                fontSize: 12.0, fontWeight: FontWeight.bold),
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
