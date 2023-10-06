import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_usuario_actual_widget.dart' show EditarUsuarioActualWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuarioActualModel
    extends FlutterFlowModel<EditarUsuarioActualWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  String? _txtNombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Minimo de caracteres ';
    }
    if (val.length > 35) {
      return 'Máximo de caracteres ';
    }

    return null;
  }

  // State field(s) for txtApellido widget.
  TextEditingController? txtApellidoController;
  String? Function(BuildContext, String?)? txtApellidoControllerValidator;
  String? _txtApellidoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Mínimo de caracteres';
    }
    if (val.length > 35) {
      return 'Máximo de caracteres ';
    }

    return null;
  }

  // State field(s) for txtTelefono widget.
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Mínimo de números';
    }
    if (val.length > 15) {
      return 'Maximo de numeros';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Máximo de caracteres ';
    }
    if (val.length > 45) {
      return 'Máximo de caracteres ';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreControllerValidator = _txtNombreControllerValidator;
    txtApellidoControllerValidator = _txtApellidoControllerValidator;
    txtTelefonoControllerValidator = _txtTelefonoControllerValidator;
    txtEmailControllerValidator = _txtEmailControllerValidator;
  }

  void dispose() {
    txtNombreController?.dispose();
    txtApellidoController?.dispose();
    txtTelefonoController?.dispose();
    txtEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
