// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RenameFoodResponseStruct extends BaseStruct {
  RenameFoodResponseStruct({
    bool? isSuccess,
    int? code,
    String? message,
    RenameFoodResultStruct? result,
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
  RenameFoodResultStruct? _result;
  RenameFoodResultStruct get result => _result ?? RenameFoodResultStruct();
  set result(RenameFoodResultStruct? val) => _result = val;
  void updateResult(Function(RenameFoodResultStruct) updateFn) =>
      updateFn(_result ??= RenameFoodResultStruct());
  bool hasResult() => _result != null;

  static RenameFoodResponseStruct fromMap(Map<String, dynamic> data) =>
      RenameFoodResponseStruct(
        isSuccess: data['isSuccess'] as bool?,
        code: castToType<int>(data['code']),
        message: data['message'] as String?,
        result: RenameFoodResultStruct.maybeFromMap(data['result']),
      );

  static RenameFoodResponseStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? RenameFoodResponseStruct.fromMap(data)
          : null;

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

  static RenameFoodResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RenameFoodResponseStruct(
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
          structBuilder: RenameFoodResultStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RenameFoodResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RenameFoodResponseStruct &&
        isSuccess == other.isSuccess &&
        code == other.code &&
        message == other.message &&
        result == other.result;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isSuccess, code, message, result]);
}

RenameFoodResponseStruct createRenameFoodResponseStruct({
  bool? isSuccess,
  int? code,
  String? message,
  RenameFoodResultStruct? result,
}) =>
    RenameFoodResponseStruct(
      isSuccess: isSuccess,
      code: code,
      message: message,
      result: result ?? RenameFoodResultStruct(),
    );
