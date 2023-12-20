import 'package:esim/pages/signup/choose.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
              children: [
                SizedBox(
                  height: 0.03 * height,
                ),
                SvgPicture.asset(
                  'assets/pictures/Group.svg',
                  width: 200,
                ),
                SizedBox(
                  height: 0.04 * height,
                ),
                Center(
                  child: Text(
                    'Create account',
                    style: blackbig,
                  ),
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email address',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )),
                SizedBox(
                  height: 0.03 * height,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )),
                SizedBox(
                  height: 0.03 * height,
                ),
                Container(
                    height: 60,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Confirm password',
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Choose();
                      }));
                    },
                    child: YelloButton(title: 'Create account')),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text:
                              'By creating an account or signing, you agree to our ',
                          style: TextStyle(
                            color: Color(0xffABABAB),
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                          )),
                      TextSpan(
                          text: 'Terms and Conditions.', style: blackmiddle),
                    ],
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
