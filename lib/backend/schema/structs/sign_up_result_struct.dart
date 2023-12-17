// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignUpResultStruct extends BaseStruct {
  SignUpResultStruct({
    String? name,
    String? email,
    String? birth,
  })  : _name = name,
        _email = email,
        _birth = birth;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "birth" field.
  String? _birth;
  String get birth => _birth ?? '';
  set birth(String? val) => _birth = val;
  bool hasBirth() => _birth != null;

  static SignUpResultStruct fromMap(Map<String, dynamic> data) =>
      SignUpResultStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        birth: data['birth'] as String?,
      );

  static SignUpResultStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SignUpResultStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'birth': _birth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'birth': serializeParam(
          _birth,
          ParamType.String,
        ),
      }.withoutNulls;

  static SignUpResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignUpResultStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        birth: deserializeParam(
          data['birth'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SignUpResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignUpResultStruct &&
        name == other.name &&
        email == other.email &&
        birth == other.birth;
  }

  @override
  int get hashCode => const ListEquality().hash([name, email, birth]);
}

SignUpResultStruct createSignUpResultStruct({
  String? name,
  String? email,
  String? birth,
}) =>
    SignUpResultStruct(
      name: name,
      email: email,
      birth: birth,
    );
