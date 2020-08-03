// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$User {
  String get userID;

  User copyWith({String userID});
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call({@required String userID}) {
    return _User(
      userID: userID,
    );
  }
}

const $User = _$UserTearOff();

class _$_User implements _User {
  const _$_User({@required this.userID}) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'User(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  _$_User copyWith({
    Object userID = freezed,
  }) {
    return _$_User(
      userID: userID == freezed ? this.userID : userID as String,
    );
  }
}

abstract class _User implements User {
  const factory _User({@required String userID}) = _$_User;

  @override
  String get userID;

  @override
  _User copyWith({String userID});
}
