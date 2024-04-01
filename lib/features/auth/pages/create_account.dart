import 'dart:developer';

import 'package:esim/features/auth/blocs/signinbloc/signin_bloc.dart';
import 'package:esim/features/auth/pages/choose.dart';
import 'package:esim/features/auth/pages/login_screen.dart';
import 'package:esim/features/auth/widgets/yello_button.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showtext = false;

  @override
  void dispose() {
    emailController.clear();
    nameController.clear();
    passwordController.clear();
    super.dispose();
  }

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
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
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
                controller: nameController,
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
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
                controller: passwordController,
                obscureText: showtext,
                decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (!showtext) {
                              showtext = true;
                            } else {
                              showtext = false;
                            }
                          });
                        },
                        icon: showtext
                            ? Icon(Icons.lock)
                            : Icon(Icons.remove_red_eye)),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            BlocConsumer<SigninBloc, SigninState>(
              listener: (context, state) {
                if (state is SigninSuccessState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Successfully created account'),
                    backgroundColor: Colors.green,
                  ));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                } else if (state is SigninFailedState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(state.errorMessage),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              builder: (context, state) {
                return GestureDetector(
                    onTap: () {
                      BlocProvider.of<SigninBloc>(context).add(
                          OnSignInButtonPressed(
                              email: emailController.text,
                              name: nameController.text,
                              password: passwordController.text));
                    },
                    child: YelloButton(title: 'Create account'));
              },
            ),
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
