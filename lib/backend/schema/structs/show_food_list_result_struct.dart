// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShowFoodListResultStruct extends BaseStruct {
  ShowFoodListResultStruct({
    List<FoodInfoStruct>? foodList,
  }) : _foodList = foodList;

  // "foodList" field.
  List<FoodInfoStruct>? _foodList;
  List<FoodInfoStruct> get foodList => _foodList ?? const [];
  set foodList(List<FoodInfoStruct>? val) => _foodList = val;
  void updateFoodList(Function(List<FoodInfoStruct>) updateFn) =>
      updateFn(_foodList ??= []);
  bool hasFoodList() => _foodList != null;

  static ShowFoodListResultStruct fromMap(Map<String, dynamic> data) =>
      ShowFoodListResultStruct(
        foodList: getStructList(
          data['foodList'],
          FoodInfoStruct.fromMap,
        ),
      );

  static ShowFoodListResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ShowFoodListResultStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'foodList': _foodList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'foodList': serializeParam(
          _foodList,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ShowFoodListResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ShowFoodListResultStruct(
        foodList: deserializeStructParam<FoodInfoStruct>(
          data['foodList'],
          ParamType.DataStruct,
          true,
          structBuilder: FoodInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ShowFoodListResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShowFoodListResultStruct &&
        listEquality.equals(foodList, other.foodList);
  }

  @override
  int get hashCode => const ListEquality().hash([foodList]);
}

ShowFoodListResultStruct createShowFoodListResultStruct() =>
    ShowFoodListResultStruct();
