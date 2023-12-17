// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeleteFridgeResultStruct extends BaseStruct {
  DeleteFridgeResultStruct({
    String? deletedFridgeName,
  }) : _deletedFridgeName = deletedFridgeName;

  // "deletedFridgeName" field.
  String? _deletedFridgeName;
  String get deletedFridgeName => _deletedFridgeName ?? '';
  set deletedFridgeName(String? val) => _deletedFridgeName = val;
  bool hasDeletedFridgeName() => _deletedFridgeName != null;

  static DeleteFridgeResultStruct fromMap(Map<String, dynamic> data) =>
      DeleteFridgeResultStruct(
        deletedFridgeName: data['deletedFridgeName'] as String?,
      );

  static DeleteFridgeResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? DeleteFridgeResultStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'deletedFridgeName': _deletedFridgeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deletedFridgeName': serializeParam(
          _deletedFridgeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeleteFridgeResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DeleteFridgeResultStruct(
        deletedFridgeName: deserializeParam(
          data['deletedFridgeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeleteFridgeResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeleteFridgeResultStruct &&
        deletedFridgeName == other.deletedFridgeName;
  }

  @override
  int get hashCode => const ListEquality().hash([deletedFridgeName]);
}

DeleteFridgeResultStruct createDeleteFridgeResultStruct({
  String? deletedFridgeName,
}) =>
    DeleteFridgeResultStruct(
      deletedFridgeName: deletedFridgeName,
    );
