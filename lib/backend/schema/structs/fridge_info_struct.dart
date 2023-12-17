// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FridgeInfoStruct extends BaseStruct {
  FridgeInfoStruct({
    int? id,
    String? name,
  })  : _id = id,
        _name = name;

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

  static FridgeInfoStruct fromMap(Map<String, dynamic> data) =>
      FridgeInfoStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
      );

  static FridgeInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? FridgeInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
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
      }.withoutNulls;

  static FridgeInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      FridgeInfoStruct(
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
      );

  @override
  String toString() => 'FridgeInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FridgeInfoStruct && id == other.id && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name]);
}

FridgeInfoStruct createFridgeInfoStruct({
  int? id,
  String? name,
}) =>
    FridgeInfoStruct(
      id: id,
      name: name,
    );
