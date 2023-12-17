// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RenameFoodResultStruct extends BaseStruct {
  RenameFoodResultStruct({
    String? newFridgeName,
  }) : _newFridgeName = newFridgeName;

  // "newFridgeName" field.
  String? _newFridgeName;
  String get newFridgeName => _newFridgeName ?? '';
  set newFridgeName(String? val) => _newFridgeName = val;
  bool hasNewFridgeName() => _newFridgeName != null;

  static RenameFoodResultStruct fromMap(Map<String, dynamic> data) =>
      RenameFoodResultStruct(
        newFridgeName: data['newFridgeName'] as String?,
      );

  static RenameFoodResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? RenameFoodResultStruct.fromMap(data)
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

  static RenameFoodResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RenameFoodResultStruct(
        newFridgeName: deserializeParam(
          data['newFridgeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RenameFoodResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RenameFoodResultStruct &&
        newFridgeName == other.newFridgeName;
  }

  @override
  int get hashCode => const ListEquality().hash([newFridgeName]);
}

RenameFoodResultStruct createRenameFoodResultStruct({
  String? newFridgeName,
}) =>
    RenameFoodResultStruct(
      newFridgeName: newFridgeName,
    );
