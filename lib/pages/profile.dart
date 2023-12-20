import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: blackbig,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Card(
                  elevation: 12,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/purchase');
                        },
                        child: Container(
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: SvgPicture.asset(
                                              'assets/icons/purchase.svg')),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Purchase history',
                                            style: profilebig,
                                          ),
                                          Text(
                                            'See all history of purchases',
                                            style: profilesmall,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/icons/arrow.png')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/about.svg'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'About eSIM app',
                                          style: profilebig,
                                        ),
                                        Text(
                                          'information about application',
                                          style: profilesmall,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/icons/arrow.png')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/rating.svg'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rate our App',
                                          style: profilebig,
                                        ),
                                        Text(
                                          'rate our app and make review',
                                          style: profilesmall,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/icons/arrow.png')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: SvgPicture.asset(
                                        'assets/icons/language.svg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Language',
                                        style: profilebig,
                                      ),
                                      Text(
                                        'Choose language of application',
                                        style: profilesmall,
                                      )
                                    ],
                                  )
                                ]),
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/icons/arrow.png')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/pc');
                        },
                        child: Container(
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: SvgPicture.asset(
                                            'assets/icons/logout.svg'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Log out',
                                            style: profilebig,
                                          ),
                                          Text(
                                            'secure your account for safety',
                                            style: profilesmall,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/icons/arrow.png')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
