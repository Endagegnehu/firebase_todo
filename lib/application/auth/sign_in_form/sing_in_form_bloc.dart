import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/auth_failures.dart';
import 'package:firebase_todo/domain/auth/i_auth_facad.dart';
import 'package:firebase_todo/domain/auth/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'sing_in_form_event.dart';
part 'sing_in_form_state.dart';

part 'sing_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacad _iAuthFacad;

  SignInFormBloc(this._iAuthFacad) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccess: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        _performActionOnAuthFacadeWithEmailAndPassword(
          _iAuthFacad.registerwithEmailandPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        _performActionOnAuthFacadeWithEmailAndPassword(
          _iAuthFacad.signInwithEmailandPassword
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        );
        final failureOrScusses = await _iAuthFacad.singInWithgoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccess: some(failureOrScusses),
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrScusse;
    if (state.emailAddress.isValid() && state.password.isValid()) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrScusse = await _iAuthFacad.signInwithEmailandPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: some(failureOrScusse),
      );
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccess: optionOf(failureOrScusse),
      );
    }
  }
}
