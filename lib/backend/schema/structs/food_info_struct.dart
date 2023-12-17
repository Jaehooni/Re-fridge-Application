// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodInfoStruct extends BaseStruct {
  FoodInfoStruct({
    int? id,
    String? name,
    String? expirationDate,
  })  : _id = id,
        _name = name,
        _expirationDate = expirationDate;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "expirationDate" field.
  String? _expirationDate;
  String get expirationDate => _expirationDate ?? '';
  set expirationDate(String? val) => _expirationDate = val;
  bool hasExpirationDate() => _expirationDate != null;

  static FoodInfoStruct fromMap(Map<String, dynamic> data) => FoodInfoStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        expirationDate: data['expirationDate'] as String?,
      );

  static FoodInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FoodInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'expirationDate': _expirationDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'expirationDate': serializeParam(
          _expirationDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static FoodInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        expirationDate: deserializeParam(
          data['expirationDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FoodInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodInfoStruct &&
        id == other.id &&
        name == other.name &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, expirationDate]);
}

FoodInfoStruct createFoodInfoStruct({
  int? id,
  String? name,
  String? expirationDate,
}) =>
    FoodInfoStruct(
      id: id,
      name: name,
      expirationDate: expirationDate,
    );
