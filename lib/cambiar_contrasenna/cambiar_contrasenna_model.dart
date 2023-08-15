import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarContrasennaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for antiguaContrasena widget.
  TextEditingController? antiguaContrasenaController;
  String? Function(BuildContext, String?)? antiguaContrasenaControllerValidator;
  // State field(s) for nuevaContrasena widget.
  TextEditingController? nuevaContrasenaController;
  String? Function(BuildContext, String?)? nuevaContrasenaControllerValidator;
  // Stores action output result for [Custom Action - cambiarContrasena] action in btnCambiarContrasenna widget.
  bool? isChange;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    antiguaContrasenaController?.dispose();
    nuevaContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
