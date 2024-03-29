import 'v_o_group.dart';
import '../value_object/value_object_classes.dart';

class AddressVOG extends VOGroup {
  final NameVO name;
  final DateVO birthDate;

  AddressVOG._(
    this.name,
    this.birthDate,
  ) : super(
          properties: {
            'name': name,
            'birthDate': birthDate,
          },
        );

  ///
  factory AddressVOG({
    required NameVO name,
    required DateVO birthDate,
  }) {
    return AddressVOG._(
      name,
      birthDate,
    );
  }

  ///
  factory AddressVOG.fromMap({
    required Map<String, dynamic> map,
  }) {
    VOGroup.mapValidate(map, ['name', 'birthDate']);

    return AddressVOG._(
      NameVO(map['name']),
      DateVO(map['birthDate']),
    );
  }
}
