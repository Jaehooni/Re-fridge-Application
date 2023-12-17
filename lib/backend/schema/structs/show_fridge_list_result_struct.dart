// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShowFridgeListResultStruct extends BaseStruct {
  ShowFridgeListResultStruct({
    List<FridgeInfoStruct>? fridgeList,
  }) : _fridgeList = fridgeList;

  // "fridgeList" field.
  List<FridgeInfoStruct>? _fridgeList;
  List<FridgeInfoStruct> get fridgeList => _fridgeList ?? const [];
  set fridgeList(List<FridgeInfoStruct>? val) => _fridgeList = val;
  void updateFridgeList(Function(List<FridgeInfoStruct>) updateFn) =>
      updateFn(_fridgeList ??= []);
  bool hasFridgeList() => _fridgeList != null;

  static ShowFridgeListResultStruct fromMap(Map<String, dynamic> data) =>
      ShowFridgeListResultStruct(
        fridgeList: getStructList(
          data['fridgeList'],
          FridgeInfoStruct.fromMap,
        ),
      );

  static ShowFridgeListResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ShowFridgeListResultStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'fridgeList': _fridgeList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fridgeList': serializeParam(
          _fridgeList,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ShowFridgeListResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ShowFridgeListResultStruct(
        fridgeList: deserializeStructParam<FridgeInfoStruct>(
          data['fridgeList'],
          ParamType.DataStruct,
          true,
          structBuilder: FridgeInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ShowFridgeListResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ShowFridgeListResultStruct &&
        listEquality.equals(fridgeList, other.fridgeList);
  }

  @override
  int get hashCode => const ListEquality().hash([fridgeList]);
}

ShowFridgeListResultStruct createShowFridgeListResultStruct() =>
    ShowFridgeListResultStruct();
