import '/auth/firebase_auth/auth_util.dart';
import '/components/comentario_exito/comentario_exito_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'send_messages_model.dart';
export 'send_messages_model.dart';

class SendMessagesWidget extends StatefulWidget {
  const SendMessagesWidget({Key? key}) : super(key: key);

  @override
  _SendMessagesWidgetState createState() => _SendMessagesWidgetState();
}

class _SendMessagesWidgetState extends State<SendMessagesWidget> {
  late SendMessagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendMessagesModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController1?.text = '506 60135992';
          _model.textController2?.text = 'Necesito información sobre...';
        }));
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Enviar comentario',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 75.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/PROPERTIES-PNG-02-e1668633133518.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (valueOrDefault(currentUserDocument?.rol, '') == 'admin')
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 50.0, 15.0, 15.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.textController1,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Telefono ',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Lato',
                                    fontSize: 20.0,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        keyboardType: TextInputType.number,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 40.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: '¿Como podemos ayudarle? ',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Lato',
                                fontSize: 20.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Lato',
                                fontSize: 20.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    maxLines: 10,
                    minLines: 2,
                    cursorColor: FlutterFlowTheme.of(context).primaryBtnText,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        100.0, 100.0, 100.0, 100.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchURL(
                            'https://api.whatsapp.com/send?phone=${_model.textController1.text}&text=${_model.textController2.text}');
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  child: ComentarioExitoWidget(),
                                ),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: 'Enviar',
                      options: FFButtonOptions(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
