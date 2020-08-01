import 'package:firebase_todo/application/auth/sign_in_form/sing_in_form_bloc.dart';
import 'package:firebase_todo/injectable.dart';
import 'package:firebase_todo/presentation/sign_in/widget/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
