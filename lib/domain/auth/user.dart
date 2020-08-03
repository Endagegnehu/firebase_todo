import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/core/failures.dart';
import 'package:firebase_todo/domain/core/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({@required String userID}) = _User;
}
