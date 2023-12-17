// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddFoodResponseStruct extends BaseStruct {
  AddFoodResponseStruct({
    bool? isSuccess,
    int? code,
    String? message,
    AddFoodResultStruct? result,
  })  : _isSuccess = isSuccess,
        _code = code,
        _message = message,
        _result = result;

  // "isSuccess" field.
  bool? _isSuccess;
  bool get isSuccess => _isSuccess ?? false;
  set isSuccess(bool? val) => _isSuccess = val;
  bool hasIsSuccess() => _isSuccess != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;
  void incrementCode(int amount) => _code = code + amount;
  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "result" field.
  AddFoodResultStruct? _result;
  AddFoodResultStruct get result => _result ?? AddFoodResultStruct();
  set result(AddFoodResultStruct? val) => _result = val;
  void updateResult(Function(AddFoodResultStruct) updateFn) =>
      updateFn(_result ??= AddFoodResultStruct());
  bool hasResult() => _result != null;

  static AddFoodResponseStruct fromMap(Map<String, dynamic> data) =>
      AddFoodResponseStruct(
        isSuccess: data['isSuccess'] as bool?,
        code: castToType<int>(data['code']),
        message: data['message'] as String?,
        result: AddFoodResultStruct.maybeFromMap(data['result']),
      );

  static AddFoodResponseStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddFoodResponseStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'isSuccess': _isSuccess,
        'code': _code,
        'message': _message,
        'result': _result?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isSuccess': serializeParam(
          _isSuccess,
          ParamType.bool,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AddFoodResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddFoodResponseStruct(
        isSuccess: deserializeParam(
          data['isSuccess'],
          ParamType.bool,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        result: deserializeStructParam(
          data['result'],
          ParamType.DataStruct,
          false,
          structBuilder: AddFoodResultStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AddFoodResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddFoodResponseStruct &&
        isSuccess == other.isSuccess &&
        code == other.code &&
        message == other.message &&
        result == other.result;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isSuccess, code, message, result]);
}

AddFoodResponseStruct createAddFoodResponseStruct({
  bool? isSuccess,
  int? code,
  String? message,
  AddFoodResultStruct? result,
}) =>
    AddFoodResponseStruct(
      isSuccess: isSuccess,
      code: code,
      message: message,
      result: result ?? AddFoodResultStruct(),
    );
