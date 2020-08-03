import 'package:firebase_todo/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFalure valueFalure;

  UnexpectedValueError(this.valueFalure);

  @override
  String toString() {
    const explanation =
        'Encountered a Value Failure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFalure');
  }
}
