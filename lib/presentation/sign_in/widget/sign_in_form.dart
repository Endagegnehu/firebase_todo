import 'package:firebase_todo/application/auth/sign_in_form/sing_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: ListView(
            children: <Widget>[
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 160,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: 'Emial',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: const Text('REGIDTER'),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
