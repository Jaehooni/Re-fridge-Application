// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RenameFridgeResultStruct extends BaseStruct {
  RenameFridgeResultStruct({
    String? newFridgeName,
  }) : _newFridgeName = newFridgeName;

  // "newFridgeName" field.
  String? _newFridgeName;
  String get newFridgeName => _newFridgeName ?? '';
  set newFridgeName(String? val) => _newFridgeName = val;
  bool hasNewFridgeName() => _newFridgeName != null;

  static RenameFridgeResultStruct fromMap(Map<String, dynamic> data) =>
      RenameFridgeResultStruct(
        newFridgeName: data['newFridgeName'] as String?,
      );

  static RenameFridgeResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? RenameFridgeResultStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'newFridgeName': _newFridgeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'newFridgeName': serializeParam(
          _newFridgeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static RenameFridgeResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RenameFridgeResultStruct(
        newFridgeName: deserializeParam(
          data['newFridgeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RenameFridgeResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RenameFridgeResultStruct &&
        newFridgeName == other.newFridgeName;
  }

  @override
  int get hashCode => const ListEquality().hash([newFridgeName]);
}

RenameFridgeResultStruct createRenameFridgeResultStruct({
  String? newFridgeName,
}) =>
    RenameFridgeResultStruct(
      newFridgeName: newFridgeName,
    );
