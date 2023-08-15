import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarUsuariosActualModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txNombre widget.
  TextEditingController? txNombreController;
  String? Function(BuildContext, String?)? txNombreControllerValidator;
  // State field(s) for txtApellido widget.
  TextEditingController? txtApellidoController;
  String? Function(BuildContext, String?)? txtApellidoControllerValidator;
  // State field(s) for txtTelefono widget.
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txNombreController?.dispose();
    txtApellidoController?.dispose();
    txtTelefonoController?.dispose();
    txtEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
