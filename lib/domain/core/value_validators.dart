import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/failures.dart';

Either<ValueFalure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFalure.invalidEmail(faildValue: input));
  }
}


Either<ValueFalure<String>, String> validatePasswordAddress(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFalure.shortPassword(faildValue: input));
  }
}