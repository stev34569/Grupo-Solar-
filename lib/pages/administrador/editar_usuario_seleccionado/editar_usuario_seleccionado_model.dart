import '/backend/backend.dart';
import '/components/editar_usuarios/editar_usuarios_widget.dart';
import '/components/eliminar_lista_usuarios/eliminar_lista_usuarios_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class EditarUsuarioSeleccionadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtBusqueda widget.
  TextEditingController? txtBusquedaController;
  String? Function(BuildContext, String?)? txtBusquedaControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtBusquedaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
