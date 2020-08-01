import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/errors.dart';
import 'package:firebase_todo/domain/core/failures.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFalure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
