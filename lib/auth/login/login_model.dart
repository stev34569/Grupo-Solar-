import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Su correo es requerido';
    }

    if (val.length < 4) {
      return 'Ingrese su correo';
    }
    if (val.length > 60) {
      return 'Maximo de caracteres.';
    }

    return null;
  }

  // State field(s) for tctPassword widget.
  TextEditingController? tctPasswordController;
  late bool tctPasswordVisibility;
  String? Function(BuildContext, String?)? tctPasswordControllerValidator;
  String? _tctPasswordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'ingrese su contraseña';
    }

    if (val.length < 1) {
      return 'ingrese su contraseña';
    }
    if (val.length > 20) {
      return 'Máximo de caracteres';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtEmailControllerValidator = _txtEmailControllerValidator;
    tctPasswordVisibility = false;
    tctPasswordControllerValidator = _tctPasswordControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtEmailController?.dispose();
    tctPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
