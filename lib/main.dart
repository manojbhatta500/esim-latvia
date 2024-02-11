import 'package:esim/pages/giude/install.dart';
import 'package:esim/pages/help.dart';
import 'package:esim/pages/home.dart';
import 'package:esim/pages/internet.dart';

import 'package:esim/pages/purchase_history/purchase.dart';
import 'package:esim/pages/signup/choose.dart';
import 'package:esim/pages/signup/create_account.dart';
import 'package:esim/pages/signup/password_changed.dart';
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
