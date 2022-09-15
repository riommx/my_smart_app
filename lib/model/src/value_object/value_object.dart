import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
//
import '../validation/i_validatable.dart';
import '../failures/value_error.dart';
import '../failures/failures.dart';
import 'i_value_object.dart';

// #############################################################################
// #  Ver: 2.0 - last: 15/09/22
// #  Nullsafety
// #  Base Class for Validated Value Objects
// #############################################################################
@immutable
abstract class ValueObject<T> extends Equatable
    implements IValueObject<T>, IValidatable {
  //
  // ===========================================================================
  final Either<Failures, T> _value;
  //
  // ===========================================================================
  const ValueObject(this._value);
  //
  // ===========================================================================
  // FOR IValueObject
  /// Throws [UnexpectedValueError] containing the [ValueFailures]
  @override
  T get getOrCrash => _value.fold(
        (failures) => throw ValueError(failures),
        id, // id = identity - same as writing (right) => right
      );
  //
  // ===========================================================================
  // FOR IValueObject
  @override
  Either<Failures, Unit> get failuresOrUnit => _value.fold(
        (failures) => left(failures),
        (_) => right(unit),
      );
  //
  // ===========================================================================
  // FOR IValueObject
  @override
  T getOrElse(T defaultValue) => _value.fold(
        (_) => defaultValue,
        id, // id = identity - same as writing (right) => right
      );
  //
  // ===========================================================================
  // FOR IValidatable
  @override
  bool isValid() => _value.isRight();
  //
  // ===========================================================================
  // FOR Equatable
  @override
  bool get stringify => true;
  //
  // ===========================================================================
  // FOR Equatable
  @override
  List<Object> get props => [_value];
}
// ******************************************************************
// *    _____   _   _____      _______   ______    _____   _    _
// *   / ____| | | |  __ \    |__   __| |  ____|  / ____| | |  | |
// *  | (___   | | | |  | |      | |    | |__    | |      | |__| |
// *   \___ \  | | | |  | |      | |    |  __|   | |      |  __  |
// *   ____) | |_| | |__| |      | |    | |____  | |____  | |  | |
// *  |_____/  (_) |_____/       |_|    |______|  \_____| |_|  |_|
// *
// *  ┈┈┈╭━━╮┈┈┈┈┈┈
// *  ┈┈╭╯┊◣╰━━━━╮┈┈
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXII >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈        -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// *
// ******************************************************************