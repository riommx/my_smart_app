import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
//
import 'value_object.dart';
import '../validation/library.dart';

// #############################################################################
// #  Ver: 2.0 - last: 15/09/22
// #  Nullsafety
// #  TODO: Comment class
// #############################################################################

//==============================================================================
class UniqueIdVO extends ValueObject<String> {
  //
  UniqueIdVO({
    String uniqueId = '',
  }) : super(uniqueId.isEmpty ? right(const Uuid().v1()) : right(uniqueId));
}

//==============================================================================
class DateVO extends ValueObject<String> {
  //
  DateVO(String value) : super(Validation.date(value));
}

//==============================================================================
class NameVO extends ValueObject<String> {
  //
  NameVO(String value) : super(Validation.name(value));
}

//==============================================================================
class NameSidVO extends ValueObject<String> {
  //
  NameSidVO(String value) : super(Validation.nameSid(value));
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