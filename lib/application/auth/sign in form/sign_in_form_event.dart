part of 'sign_in_form_bloc.dart';

@immutable
abstract class SignInFormEvent {
  const SignInFormEvent();
}

class RegisterwithEmailandPassword extends SignInFormEvent{
  RegisterwithEmailandPassword({
    @required
  });
}