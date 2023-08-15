import '/backend/backend.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'todas_propiedades_model.dart';
export 'todas_propiedades_model.dart';

class TodasPropiedadesWidget extends StatefulWidget {
  const TodasPropiedadesWidget({Key? key}) : super(key: key);

  @override
  _TodasPropiedadesWidgetState createState() => _TodasPropiedadesWidgetState();
}

class _TodasPropiedadesWidgetState extends State<TodasPropiedadesWidget> {
  late TodasPropiedadesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TodasPropiedadesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100.0,
                        height: MediaQuery.sizeOf(context).height * 0.9,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -0.92),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.safePop();
                                                },
                                                child: Icon(
                                                  Icons.chevron_left_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 32.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Propiedades en revisión',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          fontSize: 24.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 30.0, 15.0, 0.0),
                                child: StreamBuilder<List<PropiedadRecord>>(
                                  stream: queryPropiedadRecord(
                                    queryBuilder: (propiedadRecord) =>
                                        propiedadRecord
                                            .where('revision', isEqualTo: true)
                                            .orderBy('created_at',
                                                descending: true),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitChasingDots(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<PropiedadRecord>
                                        columnPropiedadRecordList =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: List.generate(
                                            columnPropiedadRecordList.length,
                                            (columnIndex) {
                                          final columnPropiedadRecord =
                                              columnPropiedadRecordList[
                                                  columnIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 120.0,
                                              constraints: BoxConstraints(
                                                maxWidth: double.infinity,
                                                maxHeight: double.infinity,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 120.0,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        columnPropiedadRecord
                                                            .image,
                                                        width: 300.0,
                                                        height: 300.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  columnPropiedadRecord
                                                                      .name,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  columnPropiedadRecord
                                                                      .provincia,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lato',
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Fecha Creación:',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  dateTimeFormat(
                                                                    'yMMMd',
                                                                    columnPropiedadRecord
                                                                        .createdAt!,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      'RevisarPropiedad',
                                                                      queryParameters:
                                                                          {
                                                                        'idProducto':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .reference,
                                                                          ParamType
                                                                              .DocumentReference,
                                                                        ),
                                                                        'propiedadImagen':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .image,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadPrecio':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .price,
                                                                          ParamType
                                                                              .double,
                                                                        ),
                                                                        'propiedadRooms':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .rooms,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadBath':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .bathroom,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadMetros':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .meters,
                                                                          ParamType
                                                                              .double,
                                                                        ),
                                                                        'propiedadDireccion':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .address,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadCanton':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .canton,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadProvincia':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .provincia,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadVideo':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .video,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadNombre':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .name,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadDescripcion':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .description,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'propiedadFecha':
                                                                            serializeParam(
                                                                          columnPropiedadRecord
                                                                              .createdAt,
                                                                          ParamType
                                                                              .DateTime,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  },
                                                                  text:
                                                                      'Revisar',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lato',
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .chat,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => setState(() {}),
                      child: NavbarWidget(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
