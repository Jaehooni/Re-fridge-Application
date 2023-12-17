import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Users Group Code

class UsersGroup {
  static String baseUrl = 'http://localhost:3000/users';
  static Map<String, String> headers = {
    'Authorization': '[token]',
  };
  static SignUpCall signUpCall = SignUpCall();
  static LoginCall loginCall = LoginCall();
  static LogoutCall logoutCall = LogoutCall();
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? password = '',
    int? birthYear,
    int? birthMonth,
    int? birthDay,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$username",
  "email": "$email",
  "password": "$password",
  "birthYear": $birthYear,
  "birthMonth": $birthMonth,
  "birthDay": $birthDay
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp',
      apiUrl: '${UsersGroup.baseUrl}/signup',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${UsersGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${UsersGroup.baseUrl}/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Users Group Code

/// Start Fridges Group Code

class FridgesGroup {
  static String baseUrl = 'http://localhost:3000/fridges';
  static Map<String, String> headers = {
    'Authorization': '[token]',
  };
  static ShowFridgeListCall showFridgeListCall = ShowFridgeListCall();
  static DeleteFridgeCall deleteFridgeCall = DeleteFridgeCall();
  static RenameFridgeCall renameFridgeCall = RenameFridgeCall();
}

class ShowFridgeListCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'showFridgeList',
      apiUrl: '${FridgesGroup.baseUrl}/lists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFridgeCall {
  Future<ApiCallResponse> call({
    int? fridgeId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFridge',
      apiUrl: '${FridgesGroup.baseUrl}/$fridgeId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RenameFridgeCall {
  Future<ApiCallResponse> call({
    int? fridgeId,
    String? name = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'renameFridge',
      apiUrl: '${FridgesGroup.baseUrl}/$fridgeId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Fridges Group Code

/// Start Foods Group Code

class FoodsGroup {
  static String baseUrl = 'http://localhost:3000/foods';
  static Map<String, String> headers = {
    'Authorization': '[token]',
  };
  static ShowFoodListCall showFoodListCall = ShowFoodListCall();
  static DeleteFoodCall deleteFoodCall = DeleteFoodCall();
  static RenameFoodCall renameFoodCall = RenameFoodCall();
}

class ShowFoodListCall {
  Future<ApiCallResponse> call({
    int? fridgeId,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fridge_id": $fridgeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'showFoodList',
      apiUrl: '${FoodsGroup.baseUrl}/lists',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFoodCall {
  Future<ApiCallResponse> call({
    int? foodId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFood',
      apiUrl: '${FoodsGroup.baseUrl}/$foodId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RenameFoodCall {
  Future<ApiCallResponse> call({
    int? foodId,
    String? name = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'renameFood',
      apiUrl: '${FoodsGroup.baseUrl}/$foodId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Foods Group Code

/// Start addFridgeAndaddFood Group Code

class AddFridgeAndaddFoodGroup {
  static String baseUrl = 'http://localhost:3000';
  static Map<String, String> headers = {
    'Authorization': '[token]',
  };
  static AddFridgeCall addFridgeCall = AddFridgeCall();
  static AddFoodCall addFoodCall = AddFoodCall();
}

class AddFridgeCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? fridgeName = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "fridgeName": "$fridgeName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addFridge',
      apiUrl: '${AddFridgeAndaddFoodGroup.baseUrl}/fridges',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddFoodCall {
  Future<ApiCallResponse> call({
    String? fridgeName = '',
    int? fridgeId,
    String? name = '',
    int? year,
    int? month,
    int? day,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fridgeName": "$fridgeName",
  "fridge_id": $fridgeId,
  "name": "$name",
  "year": $year,
  "month": $month,
  "day": $day
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addFood',
      apiUrl: '${AddFridgeAndaddFoodGroup.baseUrl}/foods',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '$token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End addFridgeAndaddFood Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
