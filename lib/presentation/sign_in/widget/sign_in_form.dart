import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_todo/application/auth/sign_in_form/sing_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signInProvider = BlocProvider.of<SignInFormBloc>(context);
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (ether) => ether.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) =>
                      'Sorry Email Address Is Already In Use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email And Password Combination',
                ),
              ).show(context);
            },
            (r) => null,
          ),
        );
      },
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
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value),
                    ),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid email',
                          orElse: () => null),
                      (_) => null,
                    ),
                // context.bloc<SignInFormBloc>().add(
                //       SignInFormEvent.emailChanged(value),
                //     ),
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
                onChanged: (value) => context.bloc<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value),
                    ),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                              shortPassword: (_) => 'ShortPassword',
                              orElse: () => null),
                          (_) => null,
                        ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        signInProvider.add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        signInProvider.add(
                          const SignInFormEvent
                              .registerWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  signInProvider.add(
                    const SignInFormEvent.signInWithGooglePressed(),
                  );
                },
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
