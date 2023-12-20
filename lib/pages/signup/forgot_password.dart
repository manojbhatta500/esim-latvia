import 'package:esim/pages/home.dart';
import 'package:esim/pages/signup/create_account.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
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
                  height: 0.01 * height,
                ),
                Text(
                  "Don't worry! It happens. Please enter the email associated with your account.",
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
                Text(
                  'Email address',
                  style: blackmiddle,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your email address',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )),
                SizedBox(
                  height: 0.05 * height,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: YelloButton(title: 'Reset password')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Remember password? ',
                  style: profilesmall,
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Log in',
                      style: blacknormal,
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
