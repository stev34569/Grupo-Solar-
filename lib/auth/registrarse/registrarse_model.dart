import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registrarse_widget.dart' show RegistrarseWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarseModel extends FlutterFlowModel<RegistrarseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtRegistroNombre widget.
  FocusNode? txtRegistroNombreFocusNode;
  TextEditingController? txtRegistroNombreController;
  String? Function(BuildContext, String?)? txtRegistroNombreControllerValidator;
  // State field(s) for txtRegistroApellido widget.
  FocusNode? txtRegistroApellidoFocusNode;
  TextEditingController? txtRegistroApellidoController;
  String? Function(BuildContext, String?)?
      txtRegistroApellidoControllerValidator;
  // State field(s) for txtRegistroEmail widget.
  FocusNode? txtRegistroEmailFocusNode;
  TextEditingController? txtRegistroEmailController;
  String? Function(BuildContext, String?)? txtRegistroEmailControllerValidator;
  // State field(s) for txtRegistroPassword widget.
  FocusNode? txtRegistroPasswordFocusNode;
  TextEditingController? txtRegistroPasswordController;
  late bool txtRegistroPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtRegistroPasswordControllerValidator;
  // State field(s) for txtRegistroConfirmarPassword widget.
  FocusNode? txtRegistroConfirmarPasswordFocusNode;
  TextEditingController? txtRegistroConfirmarPasswordController;
  late bool txtRegistroConfirmarPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtRegistroConfirmarPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtRegistroPasswordVisibility = false;
    txtRegistroConfirmarPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtRegistroNombreFocusNode?.dispose();
    txtRegistroNombreController?.dispose();

    txtRegistroApellidoFocusNode?.dispose();
    txtRegistroApellidoController?.dispose();

    txtRegistroEmailFocusNode?.dispose();
    txtRegistroEmailController?.dispose();

    txtRegistroPasswordFocusNode?.dispose();
    txtRegistroPasswordController?.dispose();

    txtRegistroConfirmarPasswordFocusNode?.dispose();
    txtRegistroConfirmarPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
