// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginResultStruct extends BaseStruct {
  LoginResultStruct({
    String? token,
  }) : _token = token;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  static LoginResultStruct fromMap(Map<String, dynamic> data) =>
      LoginResultStruct(
        token: data['token'] as String?,
      );

  static LoginResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LoginResultStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginResultStruct(
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginResultStruct && token == other.token;
  }

  @override
  int get hashCode => const ListEquality().hash([token]);
}

LoginResultStruct createLoginResultStruct({
  String? token,
}) =>
    LoginResultStruct(
      token: token,
    );
