// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeleteFoodResultStruct extends BaseStruct {
  DeleteFoodResultStruct({
    String? removedFoodName,
  }) : _removedFoodName = removedFoodName;

  // "removedFoodName" field.
  String? _removedFoodName;
  String get removedFoodName => _removedFoodName ?? '';
  set removedFoodName(String? val) => _removedFoodName = val;
  bool hasRemovedFoodName() => _removedFoodName != null;

  static DeleteFoodResultStruct fromMap(Map<String, dynamic> data) =>
      DeleteFoodResultStruct(
        removedFoodName: data['removedFoodName'] as String?,
      );

  static DeleteFoodResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? DeleteFoodResultStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'removedFoodName': _removedFoodName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'removedFoodName': serializeParam(
          _removedFoodName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeleteFoodResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DeleteFoodResultStruct(
        removedFoodName: deserializeParam(
          data['removedFoodName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeleteFoodResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeleteFoodResultStruct &&
        removedFoodName == other.removedFoodName;
  }

  @override
  int get hashCode => const ListEquality().hash([removedFoodName]);
}

DeleteFoodResultStruct createDeleteFoodResultStruct({
  String? removedFoodName,
}) =>
    DeleteFoodResultStruct(
      removedFoodName: removedFoodName,
    );
