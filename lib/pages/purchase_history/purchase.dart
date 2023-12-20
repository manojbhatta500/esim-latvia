import 'package:esim/pages/purchase_history/balance.dart';
import 'package:esim/pages/purchase_history/plan.dart';
import 'package:esim/pages/purchase_history/referal.dart';
import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/icons/Back.svg',
              width: 30,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.05 * height,
                ),
                Text(
                  'Purchase history',
                  style: blackbig,
                ),
                SizedBox(
                  height: 0.03 * height,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.50),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Creates border
                        color: Color(0xffFFFFFF)),
                    tabs: [
                      Tab(
                          child: Center(
                              child: Text(
                        'Plan',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
                      Tab(
                          child: Center(
                              child: Text(
                        'Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
                      Tab(
                          child: Center(
                              child: Text(
                        'Referrals',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontSize: 14.0,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                      ))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 0.65 * height,
                  child: TabBarView(
                    children: [
                      Plan(),
                      Balance(),
                      Referrals(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
