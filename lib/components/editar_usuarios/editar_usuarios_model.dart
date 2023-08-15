import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuariosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtApellido widget.
  TextEditingController? txtApellidoController;
  String? Function(BuildContext, String?)? txtApellidoControllerValidator;
  String? _txtApellidoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 4) {
      return 'Edite nuevamente';
    }
    if (val.length > 20) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  // State field(s) for txtTelefono widget.
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Telefono es requerido';
    }

    if (val.length < 4) {
      return 'Edite nuevamente';
    }
    if (val.length > 10) {
      return 'Maximo de digitos';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Correo requerido';
    }

    if (val.length < 6) {
      return 'Error digite correo valido';
    }
    if (val.length > 25) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  // State field(s) for dropDownRol widget.
  String? dropDownRolValue;
  FormFieldController<String>? dropDownRolValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
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
