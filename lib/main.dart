import 'package:esim/pages/giude/install.dart';
import 'package:esim/pages/help.dart';
import 'package:esim/pages/home.dart';
import 'package:esim/pages/internet.dart';

import 'package:esim/pages/purchase_history/purchase.dart';
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
        '/': (context) => Home(),
        '/internet': (context) => Internet(),
        '/help': (context) => Help(),
        '/pc': (context) => PasswrodChanged(),
        '/install': (context) => Install(),
        '/purchase': (context) => Purchase(),
      },
    );
  }
}
