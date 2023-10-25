import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_usuarios_widget.dart' show EditarUsuariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuariosModel extends FlutterFlowModel<EditarUsuariosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  String? _txtNombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 4) {
      return '20';
    }
    if (val.length > 30) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  // State field(s) for txtApellido widget.
  FocusNode? txtApellidoFocusNode;
  TextEditingController? txtApellidoController;
  String? Function(BuildContext, String?)? txtApellidoControllerValidator;
  String? _txtApellidoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 4) {
      return 'Es requerido';
    }
    if (val.length > 30) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Edite nuevamente';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Error digite correo valido';
    }
    if (val.length > 30) {
      return 'Maximo de caracteres';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Correo valido';
    }
    return null;
  }

  // State field(s) for dropDownRol widget.
  String? dropDownRolValue;
  FormFieldController<String>? dropDownRolValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreControllerValidator = _txtNombreControllerValidator;
    txtApellidoControllerValidator = _txtApellidoControllerValidator;
    txtTelefonoControllerValidator = _txtTelefonoControllerValidator;
    txtEmailControllerValidator = _txtEmailControllerValidator;
  }

  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtApellidoFocusNode?.dispose();
    txtApellidoController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
