import 'package:dartz/dartz.dart';
import 'package:firebase_todo/domain/auth/auth_failures.dart';
import 'package:firebase_todo/domain/auth/user.dart';
import 'package:flutter/cupertino.dart';
import 'value_object.dart';

abstract class IAuthFacad {
  Future<Option<User>> getdignInUser();
  Future<Either<AuthFailure, Unit>> registerwithEmailandPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> signInwithEmailandPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> singInWithgoogle();
  Future<void> signOut();
}
