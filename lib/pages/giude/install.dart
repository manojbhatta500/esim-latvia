import 'package:esim/pages/giude/fast.dart';
import 'package:esim/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Install extends StatefulWidget {
  const Install({super.key});

  @override
  State<Install> createState() => _InstallState();
}

class _InstallState extends State<Install> {
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
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.1 * height,
                ),
                Text(
                  'Forgot password?',
                  style: blackbig,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Creates border
                        color: const Color(0xffFFFFFF)),
                    tabs: const [
                      Tab(
                          child: Center(
                              child: Text(
                        'Fast',
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
                        'Manual',
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
                        'QR-code',
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
                  height: 0.65 * height,
                  child: const TabBarView(
                    children: [
                      Fast(),
                      Text('adsa'),
                      Text('adsa'),
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
