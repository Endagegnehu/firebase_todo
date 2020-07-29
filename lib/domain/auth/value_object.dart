import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/failures.dart';
import 'package:firebase_todo/domain/core/value_object.dart';
import 'package:firebase_todo/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFalure<String>, String> value;

  factory EmailAddress(String value) {
    assert(value != null);
    return EmailAddress._(
      validateEmailAddress(value),
    );
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFalure<String>, String> value;

  factory Password(String value) {
    assert(value != null);
    return Password._(
      validatePasswordAddress(value),
    );
  }
  const Password._(this.value);
}