import 'package:firebase_todo/domain/auth/value_object.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class EmailAddressMock extends Mock implements EmailAddress {}

final email = EmailAddress('value');

void main() {
  final email = EmailAddress('endukokam@gmail.com');

  test('email validation ', () {
    String validornot = email.value.fold(
      (l) => 'Failed',
      (r) => r,
    );
    expect('endukokam@gmail.com', validornot);
  });
}
