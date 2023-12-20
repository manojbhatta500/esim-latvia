import 'package:esim/pages/signup/forgot_password.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class PinCode extends StatefulWidget {
  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  final TextEditingController _pinCodeController = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.1 * height,
            ),
            Text(
              'Please check your email',
              style: blackbig,
            ),
            SizedBox(
              height: 0.01 * height,
            ),
            Text(
              "We've sent a code to helloworld@gmail.com",
              style: TextStyle(
                color: Color(0xffABABAB),
                fontFamily: 'Inter',
                fontSize: 16.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 0.1 * height,
            ),
            PinCodeFields(
              length: 4,
              fieldBorderStyle: FieldBorderStyle.square,
              fieldHeight: 70.0,
              fieldWidth: 50.0,
              borderWidth: 1.0,
              controller: _pinCodeController,
              onComplete: (result) {},
            ),
            SizedBox(
              height: 0.1 * height,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ForgotPassword();
                  }));
                },
                child: YelloButton(title: 'Reset password')),
            Center(
              child: Text(
                'Send code again: 00:20',
                style: TextStyle(
                  color: Color(0xffABABAB),
                  fontFamily: 'Inter',
                  fontSize: 12.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
