import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/value_object.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class EmailAddressMock extends Mock implements EmailAddress {}

void main() {
  EmailAddress emailAddress;
  setUp(() {
    emailAddress = EmailAddress('emailAddressMock');
  });

  String email = 'endau@gmail.com';

  test('email validation', () {
    emailAddress.value.fold((l) => '$left', (r) => right);
  });
}
