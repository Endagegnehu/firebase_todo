import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFalure<T> with _$ValueFalure<T> {
  const factory ValueFalure.invalidEmail({@required String faildValue}) =
      InvalidEmail<T>;
  const factory ValueFalure.shortPassword({@required String faildValue}) =
      ShortPassword<T>;
}
