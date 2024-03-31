import 'package:esim/features/auth/blocs/signinbloc/signin_bloc.dart';
import 'package:esim/features/auth/pages/choose_option.dart';
import 'package:esim/features/auth/pages/forgot_password.dart';
import 'package:esim/features/auth/pages/login_screen.dart';
import 'package:esim/features/auth/pages/pin_code.dart';
import 'package:esim/features/auth/pages/reset_password.dart';
import 'package:esim/features/giude/screens/install.dart';
import 'package:esim/features/help/screens/help.dart';
import 'package:esim/features/home/screens/home.dart';
import 'package:esim/features/internet/screens/internet.dart';
import 'package:esim/features/purchase_history/screens/purchase.dart';
import 'package:esim/features/auth/pages/choose.dart';
import 'package:esim/features/auth/pages/create_account.dart';
import 'package:esim/features/auth/pages/password_changed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChooseOption(),

        // initialRoute: '/pc',
        // routes: {
        //   '/': (context) => const Home(),
        //   '/internet': (context) => const Internet(),
        //   '/help': (context) => const Help(),
        //   '/pc': (context) => const PasswrodChanged(),
        //   '/create_account': (context) => CreateAccount(),
        //   '/choose': (context) => const Choose(),
        //   '/install': (context) => const Install(),
        //   '/purchase': (context) => const Purchase(),
        // },
      ),
    );
  }
}
