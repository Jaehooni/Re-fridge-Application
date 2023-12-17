import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _birth = '';
  String get birth => _birth;
  set birth(String value) {
    _birth = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }

  int _birthYear = 0;
  int get birthYear => _birthYear;
  set birthYear(int value) {
    _birthYear = value;
  }

  int _birthMonth = 0;
  int get birthMonth => _birthMonth;
  set birthMonth(int value) {
    _birthMonth = value;
  }

  int _birthDay = 0;
  int get birthDay => _birthDay;
  set birthDay(int value) {
    _birthDay = value;
  }

  String _currentFridge = '';
  String get currentFridge => _currentFridge;
  set currentFridge(String value) {
    _currentFridge = value;
  }

  int _currentFridgeId = 0;
  int get currentFridgeId => _currentFridgeId;
  set currentFridgeId(int value) {
    _currentFridgeId = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
