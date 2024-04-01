import 'package:esim/features/auth/blocs/signinbloc/signin_bloc.dart';
import 'package:esim/features/auth/pages/choose_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: const MaterialApp(
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
