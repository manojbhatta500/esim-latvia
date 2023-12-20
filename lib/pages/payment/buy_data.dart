import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/country_tab/country_list.dart';
import 'package:esim/widgets/payment/bottom.dart';
import 'package:esim/widgets/payment/sano.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyData extends StatefulWidget {
  BuyData({super.key, required this.countrycode});

  final String countrycode;

  @override
  State<BuyData> createState() => _BuyDataState();
}

class _BuyDataState extends State<BuyData> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              'assets/icons/Back.svg',
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                      Center(
                          child: Text(
                        '${countryNames[widget.countrycode]}',
                        style: blackbig,
                      )),
                      SizedBox(
                        height: 0.04 * height,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                            Sano(data: '3', days: '30', price: '9'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                        'You choose: 3 GB, 30 days for 8.5€',
                        style: blackmiddle,
                      )),
                      SizedBox(
                        height: 0.04 * height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset('assets/pictures/wallet.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pay from your balance',
                                style: helptext,
                              ),
                            ],
                          ),
                          CupertinoSwitch(
                              value: value,
                              onChanged: (bool change) {
                                setState(() {
                                  value = change;
                                });
                              })
                        ],
                      ),
                      SizedBox(
                        height: 0.04 * height,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cellular operators',
                                style: helptext,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [Image.asset('assets/icons/arrow.png')],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/pictures/phone.svg'),
                      Text(
                        'Esim only for internet (no phone number)',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text(
                    'By placing an order you confirm the following: Terms and Conditions and Privacy Policy ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text(
                    'Before finalising your order, please ensure that your device is eSIM compatible and not tied to an operator',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Bottom()
          ],
        ),
      ),
    ));
  }
}
