// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddFridgeResultStruct extends BaseStruct {
  AddFridgeResultStruct({
    String? owner,
    String? fridgeName,
  })  : _owner = owner,
        _fridgeName = fridgeName;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  set owner(String? val) => _owner = val;
  bool hasOwner() => _owner != null;

  // "fridgeName" field.
  String? _fridgeName;
  String get fridgeName => _fridgeName ?? '';
  set fridgeName(String? val) => _fridgeName = val;
  bool hasFridgeName() => _fridgeName != null;

  static AddFridgeResultStruct fromMap(Map<String, dynamic> data) =>
      AddFridgeResultStruct(
        owner: data['owner'] as String?,
        fridgeName: data['fridgeName'] as String?,
      );

  static AddFridgeResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddFridgeResultStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'owner': _owner,
        'fridgeName': _fridgeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'owner': serializeParam(
          _owner,
          ParamType.String,
        ),
        'fridgeName': serializeParam(
          _fridgeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddFridgeResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddFridgeResultStruct(
        owner: deserializeParam(
          data['owner'],
          ParamType.String,
          false,
        ),
        fridgeName: deserializeParam(
          data['fridgeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddFridgeResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddFridgeResultStruct &&
        owner == other.owner &&
        fridgeName == other.fridgeName;
  }

  @override
  int get hashCode => const ListEquality().hash([owner, fridgeName]);
}

AddFridgeResultStruct createAddFridgeResultStruct({
  String? owner,
  String? fridgeName,
}) =>
    AddFridgeResultStruct(
      owner: owner,
      fridgeName: fridgeName,
    );
