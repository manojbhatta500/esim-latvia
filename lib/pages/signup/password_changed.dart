import 'package:esim/pages/signup/reset_password.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswrodChanged extends StatefulWidget {
  const PasswrodChanged({super.key});

  @override
  State<PasswrodChanged> createState() => _PasswrodChangedState();
}

class _PasswrodChangedState extends State<PasswrodChanged> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 0.3 * height,
          ),
          SvgPicture.asset(
            'assets/pictures/Group.svg',
            width: 100,
          ),
          SizedBox(
            height: 0.04 * height,
          ),
          Center(
            child: Text(
              'Password changed',
              style: blackbig,
            ),
          ),
          SizedBox(
            height: 0.01 * height,
          ),
          Center(
            child: Text(
              'Your password has been changed succesfully',
              style: profilesmall,
            ),
          ),
          SizedBox(
            height: 0.02 * height,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResetPassword();
                }));
              },
              child: YelloButton(title: 'Back to login'))
        ],
      ),
    ));
  }
}
