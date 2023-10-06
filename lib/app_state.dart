import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _Buscando = false;
  bool get Buscando => _Buscando;
  set Buscando(bool _value) {
    _Buscando = _value;
  }

  DocumentReference? _PropertieSelected;
  DocumentReference? get PropertieSelected => _PropertieSelected;
  set PropertieSelected(DocumentReference? _value) {
    _PropertieSelected = _value;
  }

  bool _InvitadoState = false;
  bool get InvitadoState => _InvitadoState;
  set InvitadoState(bool _value) {
    _InvitadoState = _value;
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
