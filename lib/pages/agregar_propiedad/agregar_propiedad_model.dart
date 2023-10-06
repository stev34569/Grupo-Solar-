import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/agregado_exito/agregado_exito_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'agregar_propiedad_widget.dart' show AgregarPropiedadWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarPropiedadModel extends FlutterFlowModel<AgregarPropiedadWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for txtAgregarTitulo widget.
  TextEditingController? txtAgregarTituloController;
  String? Function(BuildContext, String?)? txtAgregarTituloControllerValidator;
  // State field(s) for txtAgregarDescripcion widget.
  TextEditingController? txtAgregarDescripcionController;
  String? Function(BuildContext, String?)?
      txtAgregarDescripcionControllerValidator;
  // State field(s) for txtAgregarPrecio widget.
  TextEditingController? txtAgregarPrecioController;
  String? Function(BuildContext, String?)? txtAgregarPrecioControllerValidator;
  // State field(s) for txtAgregarMetros widget.
  TextEditingController? txtAgregarMetrosController;
  String? Function(BuildContext, String?)? txtAgregarMetrosControllerValidator;
  // State field(s) for DdProvincias widget.
  String? ddProvinciasValue;
  FormFieldController<String>? ddProvinciasValueController;
  // State field(s) for DdCanton widget.
  String? ddCantonValue;
  FormFieldController<String>? ddCantonValueController;
  // State field(s) for DdDistrito widget.
  String? ddDistritoValue;
  FormFieldController<String>? ddDistritoValueController;
  // State field(s) for txtAgregarDireccion widget.
  TextEditingController? txtAgregarDireccionController;
  String? Function(BuildContext, String?)?
      txtAgregarDireccionControllerValidator;
  // State field(s) for DropDownHabitaciones widget.
  String? dropDownHabitacionesValue;
  FormFieldController<String>? dropDownHabitacionesValueController;
  // State field(s) for DropDownBathroom widget.
  String? dropDownBathroomValue;
  FormFieldController<String>? dropDownBathroomValueController;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtAgregarTituloController?.dispose();
    txtAgregarDescripcionController?.dispose();
    txtAgregarPrecioController?.dispose();
    txtAgregarMetrosController?.dispose();
    txtAgregarDireccionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
