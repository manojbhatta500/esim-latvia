import 'package:esim/features/giude/screens/install.dart';
import 'package:esim/features/help/screens/help.dart';
import 'package:esim/features/home/screens/home.dart';
import 'package:esim/features/internet/screens/internet.dart';

import 'package:esim/features/purchase_history/screens/purchase.dart';
import 'package:esim/features/signup/pages/choose.dart';
import 'package:esim/features/signup/pages/create_account.dart';
import 'package:esim/features/signup/pages/password_changed.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CreateAccount(),
      initialRoute: '/pc',
      routes: {
        '/': (context) => const Home(),
        '/internet': (context) => const Internet(),
        '/help': (context) => const Help(),
        '/pc': (context) => const PasswrodChanged(),
        '/choose': (context) => const Choose(),
        '/install': (context) => const Install(),
        '/purchase': (context) => const Purchase(),
      },
    );
  }
}
