import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EliminarListaUsuariosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtApellido widget.
  TextEditingController? txtApellidoController;
  String? Function(BuildContext, String?)? txtApellidoControllerValidator;
  // State field(s) for txtTelefono widget.
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreController?.dispose();
    txtApellidoController?.dispose();
    txtTelefonoController?.dispose();
    txtEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
