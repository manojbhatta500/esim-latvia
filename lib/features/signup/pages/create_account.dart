import 'package:esim/features/signup/pages/choose.dart';
import 'package:esim/features/signup/widgets/yello_button.dart';

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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xffF0F3FB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.02 * height,
            ),
            // SvgPicture.asset(
            //   'assets/pictures/air.png',
            //   width: 200,
            // ),
            Image.asset(
              'assets/pictures/air.png',
              width: 200,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Create account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    // suffixIcon: const Icon(Icons.remove_red_eye),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD8DADC)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Choose();
                  }));
                },
                child: const YelloButton(title: 'Create account')),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'By creating an account or signing you agree to our ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
