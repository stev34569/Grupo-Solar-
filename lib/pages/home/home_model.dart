import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  DocumentReference? imagenPropiedad;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtbuscar widget.
  TextEditingController? txtbuscarController;
  String? Function(BuildContext, String?)? txtbuscarControllerValidator;
  List<PropiedadRecord> simpleSearchResults = [];
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    txtbuscarController?.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
