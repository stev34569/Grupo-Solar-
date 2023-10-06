import '/cambiar_contrasenna/confirmar_contra/confirmar_contra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambio_contrasenna_widget.dart' show CambioContrasennaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambioContrasennaModel extends FlutterFlowModel<CambioContrasennaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for antiguaContrasena widget.
  TextEditingController? antiguaContrasenaController;
  late bool antiguaContrasenaVisibility;
  String? Function(BuildContext, String?)? antiguaContrasenaControllerValidator;
  String? _antiguaContrasenaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Es requerido';
    }
    if (val.length > 35) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  // State field(s) for nuevaContrasena widget.
  TextEditingController? nuevaContrasenaController;
  late bool nuevaContrasenaVisibility;
  String? Function(BuildContext, String?)? nuevaContrasenaControllerValidator;
  String? _nuevaContrasenaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es requerido';
    }

    if (val.length < 2) {
      return 'Es requerido';
    }
    if (val.length > 35) {
      return 'Maximo de caracteres';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    antiguaContrasenaVisibility = false;
    antiguaContrasenaControllerValidator =
        _antiguaContrasenaControllerValidator;
    nuevaContrasenaVisibility = false;
    nuevaContrasenaControllerValidator = _nuevaContrasenaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    antiguaContrasenaController?.dispose();
    nuevaContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
