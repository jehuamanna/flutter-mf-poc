import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      if (prefs.containsKey('ff_groupVisibility')) {
        try {
          final serializedData = prefs.getString('ff_groupVisibility') ?? '{}';
          _groupVisibility =
              GroupStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _baseurl = prefs.getString('ff_baseurl') ?? _baseurl;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  GroupStruct _groupVisibility = GroupStruct.fromSerializableMap(jsonDecode(
      '{\"groupShow\":\"[\\\"false\\\",\\\"false\\\",\\\"false\\\"]\"}'));
  GroupStruct get groupVisibility => _groupVisibility;
  set groupVisibility(GroupStruct _value) {
    _groupVisibility = _value;
    prefs.setString('ff_groupVisibility', _value.serialize());
  }

  void updateGroupVisibilityStruct(Function(GroupStruct) updateFn) {
    updateFn(_groupVisibility);
    prefs.setString('ff_groupVisibility', _groupVisibility.serialize());
  }

  int _selectedGroup = 1;
  int get selectedGroup => _selectedGroup;
  set selectedGroup(int _value) {
    _selectedGroup = _value;
  }

  String _numberInString = '123';
  String get numberInString => _numberInString;
  set numberInString(String _value) {
    _numberInString = _value;
  }

  String _baseurl = 'localhost:3005';
  String get baseurl => _baseurl;
  set baseurl(String _value) {
    _baseurl = _value;
    prefs.setString('ff_baseurl', _value);
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
