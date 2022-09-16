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
  UniqueIdVO(String value) : super(Validation.uId.fun(value));
}

//==============================================================================
class DateVO extends ValueObject<String> {
  //
  DateVO(String value) : super(Validation.date.fun(value));
}

//==============================================================================
class NameVO extends ValueObject<String> {
  //
  NameVO(String value) : super(Validation.name.fun(value));
}

//==============================================================================
class NameSidVO extends ValueObject<String> {
  //
  NameSidVO(String value) : super(Validation.name.fun(value));
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