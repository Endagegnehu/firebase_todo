// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ValueFalure<T> {
  String get faildValue;

  ValueFalure<T> copyWith({String faildValue});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(@required String faildValue),
    @required Result shortPassword(@required String faildValue),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(@required String faildValue),
    Result shortPassword(@required String faildValue),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  });
}

class _$ValueFalureTearOff {
  const _$ValueFalureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required String faildValue}) {
    return InvalidEmail<T>(
      faildValue: faildValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required String faildValue}) {
    return ShortPassword<T>(
      faildValue: faildValue,
    );
  }
}

const $ValueFalure = _$ValueFalureTearOff();

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.faildValue})
      : assert(faildValue != null);

  @override
  final String faildValue;

  @override
  String toString() {
    return 'ValueFalure<$T>.invalidEmail(faildValue: $faildValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.faildValue, faildValue) ||
                const DeepCollectionEquality()
                    .equals(other.faildValue, faildValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faildValue);

  @override
  _$InvalidEmail<T> copyWith({
    Object faildValue = freezed,
  }) {
    return _$InvalidEmail<T>(
      faildValue:
          faildValue == freezed ? this.faildValue : faildValue as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(@required String faildValue),
    @required Result shortPassword(@required String faildValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(faildValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(@required String faildValue),
    Result shortPassword(@required String faildValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(faildValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFalure<T> {
  const factory InvalidEmail({@required String faildValue}) = _$InvalidEmail<T>;

  @override
  String get faildValue;

  @override
  InvalidEmail<T> copyWith({String faildValue});
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.faildValue})
      : assert(faildValue != null);

  @override
  final String faildValue;

  @override
  String toString() {
    return 'ValueFalure<$T>.shortPassword(faildValue: $faildValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.faildValue, faildValue) ||
                const DeepCollectionEquality()
                    .equals(other.faildValue, faildValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(faildValue);

  @override
  _$ShortPassword<T> copyWith({
    Object faildValue = freezed,
  }) {
    return _$ShortPassword<T>(
      faildValue:
          faildValue == freezed ? this.faildValue : faildValue as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(@required String faildValue),
    @required Result shortPassword(@required String faildValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(faildValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(@required String faildValue),
    Result shortPassword(@required String faildValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(faildValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFalure<T> {
  const factory ShortPassword({@required String faildValue}) =
      _$ShortPassword<T>;

  @override
  String get faildValue;

  @override
  ShortPassword<T> copyWith({String faildValue});
}
