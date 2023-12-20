import 'package:esim/pages/home.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF0F3FB),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Color(0xffF0F3FB), borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.03 * height,
                ),
                SvgPicture.asset(
                  'assets/pictures/Group.svg',
                  width: 200,
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                Center(
                  child: Text(
                    'eSIM APP',
                    style: blackbig,
                  ),
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                Text(
                  "Now your finances are in one place and always under control",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffABABAB),
                    fontFamily: 'Inter',
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                Company(
                    image: 'assets/pictures/Google.svg',
                    text: 'Continue with Google'),
                SizedBox(
                  height: 0.01 * height,
                ),
                Company(
                    image: 'assets/pictures/Apple.svg',
                    text: 'Continue with Apple'),
                SizedBox(
                  height: 0.01 * height,
                ),
                Company(
                    image: 'assets/pictures/Message.svg',
                    text: 'Continue with Email'),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: Color(0xffABABAB),
                              fontFamily: 'Inter',
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            )),
                        TextSpan(text: ' Log in', style: blackmiddle),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
