import 'package:esim/features/home/screens/home.dart';
import 'package:esim/features/signup/widgets/company.dart';
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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Container(
        height: 0.82 * height,
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
            const SizedBox(
              height: 20,
            ),
            // SvgPicture.asset(
            //   'assets/pictures/official_logo.svg',
            //   width: 200,
            // ),
            Image.asset(
              'assets/pictures/air.png',
              width: 200,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'eSIM APP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 319,
              child: Text(
                'Now your finances are in one place and always under control',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999988079071),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 0.03 * height,
            ),
            const Company(
                image: 'assets/pictures/Google.svg',
                text: 'Continue with Google'),
            SizedBox(
              height: 0.01 * height,
            ),
            const Company(
                image: 'assets/pictures/Apple.svg',
                text: 'Continue with Apple'),
            SizedBox(
              height: 0.01 * height,
            ),
            const Company(
                image: 'assets/pictures/Message.svg',
                text: 'Continue with Email'),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Home();
            }));
          },
          child: Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const TextSpan(
                    text: ' Log in',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
