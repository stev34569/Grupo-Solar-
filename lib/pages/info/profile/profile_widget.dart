import '/auth/firebase_auth/auth_util.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => Container(
                                              width: 120.0,
                                              height: 120.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                currentUserPhoto,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              currentUserDisplayName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        fontSize: 24.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.apellido,
                                                    ''),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          fontSize: 24.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            currentUserEmail,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
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
                            0.0, 30.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                () {
                                  if (valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'admin') {
                                    return 'ADMIN';
                                  } else if (valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'employee') {
                                    return 'EMPLEADO';
                                  } else if (valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'cliente') {
                                    return 'CLIENTE';
                                  } else {
                                    return 'INVITADO';
                                  }
                                }(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lato',
                                      fontSize: 24.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            if (valueOrDefault(currentUserDocument?.rol, '') ==
                                'admin')
                              AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed('EditarUsuarioSeleccionado');
                                  },
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.person_search_rounded,
                                    ),
                                    title: Text(
                                      'Empleados',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      size: 20.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            if (valueOrDefault(currentUserDocument?.rol, '') ==
                                'admin')
                              AuthUserStreamWidget(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Admin_EventsErrors');
                                  },
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.receipt_long,
                                    ),
                                    title: Text(
                                      'Reportes',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      size: 20.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.settings,
                              ),
                              title: Text(
                                'Configuración',
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: FlutterFlowTheme.of(context).accent2,
                                size: 20.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Info');
                              },
                              child: ListTile(
                                leading: Icon(
                                  Icons.info_outlined,
                                ),
                                title: Text(
                                  'Acerca de la empresa',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context).accent2,
                                  size: 20.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('cambiarContrasenna');
                                    },
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.password,
                                      ),
                                      title: Text(
                                        'Cambiar contraseña',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        size: 20.0,
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      dense: false,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 18.0, 0.0, 18.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('profileUsuarios');
                                      },
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.person,
                                        ),
                                        title: Text(
                                          'Perfil de usuario',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          size: 20.0,
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('sendMessages');
                                    },
                                    child: ListTile(
                                      leading: Icon(
                                        Icons.message,
                                      ),
                                      title: Text(
                                        'Comentario',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        size: 20.0,
                                      ),
                                      tileColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      dense: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (valueOrDefault(currentUserDocument?.rol, '') ==
                          'CLIENTE')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.house_sharp,
                                  ),
                                  title: Text(
                                    'Mis propiedades',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context).accent2,
                                    size: 20.0,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                      if (valueOrDefault(currentUserDocument?.rol, '') ==
                          'admin')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('TodasPropiedades');
                                  },
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.house_sharp,
                                    ),
                                    title: Text(
                                      'Propiedades',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall,
                                    ),
                                    trailing: Icon(
                                      Icons.arrow_forward_ios,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      size: 20.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 40.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                context.goNamedAuth('Welcome', context.mounted);
                              },
                              child: ListTile(
                                leading: Icon(
                                  Icons.logout,
                                ),
                                title: Text(
                                  'Cerrar sesión',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context).accent2,
                                  size: 20.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
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
