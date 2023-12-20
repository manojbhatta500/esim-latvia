import 'package:esim/pages/signup/pin_code.dart';
import 'package:esim/utils/constants.dart';
import 'package:esim/widgets/signup_widgets/yello_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              'Reset password',
              style: blackbig,
            ),
            SizedBox(
              height: 0.01 * height,
            ),
            Text(
              "Please type something you'll remember",
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
              'New password',
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
                      hintText: 'must be 8 characters',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            SizedBox(
              height: 0.05 * height,
            ),
            Text(
              'Confirm new password',
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
                      hintText: 'repeat password',
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PinCode();
                  }));
                },
                child: YelloButton(title: 'Reset password'))
          ],
        ),
      ),
    ));
  }
}
