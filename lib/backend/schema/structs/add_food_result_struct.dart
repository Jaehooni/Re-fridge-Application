// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddFoodResultStruct extends BaseStruct {
  AddFoodResultStruct({
    String? fridgeName,
    String? food,
  })  : _fridgeName = fridgeName,
        _food = food;

  // "fridgeName" field.
  String? _fridgeName;
  String get fridgeName => _fridgeName ?? '';
  set fridgeName(String? val) => _fridgeName = val;
  bool hasFridgeName() => _fridgeName != null;

  // "food" field.
  String? _food;
  String get food => _food ?? '';
  set food(String? val) => _food = val;
  bool hasFood() => _food != null;

  static AddFoodResultStruct fromMap(Map<String, dynamic> data) =>
      AddFoodResultStruct(
        fridgeName: data['fridgeName'] as String?,
        food: data['food'] as String?,
      );

  static AddFoodResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddFoodResultStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fridgeName': _fridgeName,
        'food': _food,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fridgeName': serializeParam(
          _fridgeName,
          ParamType.String,
        ),
        'food': serializeParam(
          _food,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddFoodResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddFoodResultStruct(
        fridgeName: deserializeParam(
          data['fridgeName'],
          ParamType.String,
          false,
        ),
        food: deserializeParam(
          data['food'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddFoodResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddFoodResultStruct &&
        fridgeName == other.fridgeName &&
        food == other.food;
  }

  @override
  int get hashCode => const ListEquality().hash([fridgeName, food]);
}

AddFoodResultStruct createAddFoodResultStruct({
  String? fridgeName,
  String? food,
}) =>
    AddFoodResultStruct(
      fridgeName: fridgeName,
      food: food,
    );
