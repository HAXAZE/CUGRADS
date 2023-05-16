import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'academics_model.dart';
export 'academics_model.dart';

class AcademicsWidget extends StatefulWidget {
  const AcademicsWidget({Key? key}) : super(key: key);

  @override
  _AcademicsWidgetState createState() => _AcademicsWidgetState();
}

class _AcademicsWidgetState extends State<AcademicsWidget> {
  late AcademicsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AcademicsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF08A8A8),
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
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NavBarPage(initialPage: 'Homepage'),
                ),
              );
            },
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
            child: Text(
              'ACADEMICS',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Handlee',
                    color: Colors.white,
                    fontSize: 22.0,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 101.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          NavBarPage(
                                                              initialPage:
                                                                  'profile'),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://media.istockphoto.com/id/1139495117/photo/facing-my-future-with-confidence.jpg?b=1&s=612x612&w=0&k=20&c=0IxGuRpfxxEdRZDAH5y1gpcRU5saje8EUKNlKPgKv-g=',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 5.0),
                                                    child: Text(
                                                      'Priya Singh',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'IEEE CIS PR Coordinator',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Hey there! 👋🏻.............',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'data:image/jpeg;base64,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',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Clairo Zeset',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Student @Chandigarh University',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Is anyone interested in Flutter flow Designing🙌😊 ??',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1517256673644-36ad11246d21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Sentara  Datoz',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '!st year CSE @CU',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Can anyone tell me how is biology related to CSE ??',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 40.0,
                                                height: 40.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1545696968-1a5245650b36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1132&q=80',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Rohan Bohra',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Electronics Department',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'I am preparing a n arduino board which is auto....',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      'https://media.licdn.com/dms/image/C4D03AQGveKog8887Bw/profile-displayphoto-shrink_800_800/0/1652640515162?e=1689206400&v=beta&t=Lbcldal9VJcPwY2w02D1vmYasOV-kyjLpaAtbvjcoLw',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: SelectionArea(
                                                        child: AutoSizeText(
                                                      'Swati Yadav',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '2nd cse @CU| C++ | DSA',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'I  want to know where are there a lot of subjects ....',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://media.licdn.com/dms/image/D4D03AQFf_1s4wY_4Dg/profile-displayphoto-shrink_800_800/0/1671849229906?e=1689206400&v=beta&t=iY4nqlmCkiFr97eX-r9lqURbHuMVADaWpKPwy13u3LE',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Sahil Kumar',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'CU student',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Hello Connections 🙋. I am Sahil Kumar. Let me ...',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 50.0,
                                                height: 50.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  '',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 5.0),
                                                    child: Text(
                                                      'Sagar Kumar',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Hello Everyone! I am Sagar Kumar',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'I am a sophomore in CSE CU, and looking forwa...',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 40.0,
                                              height: 40.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://unsplash.com/photos/rDEOVtE7vOs',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 5.0, 5.0),
                                                  child: Text(
                                                    'Lokesh Raj',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hello!!.. I am a front end developer looking to work ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'I have learnt about HTML, CSS and javascipt and ...',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://picsum.photos/seed/827/600',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 5.0, 5.0),
                                                  child: Text(
                                                    'Riya Rai',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hello  Connections, I am searching for a UI/UX designer',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'I am working on a real-life problem to improve my skills',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://picsum.photos/seed/815/600',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 5.0, 5.0),
                                                  child: Text(
                                                    'Subham Kumar',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hey! everyone I am Shubham, a fresher in CSE ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Looking forward for an offline meet',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://picsum.photos/seed/729/600',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Khus Srivastava',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hello Connections, I am Khus from Rasjasthan.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Looking for a team to work as a developer.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.network(
                          'https://picsum.photos/seed/234/600',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        Image.network(
                          'https://picsum.photos/seed/699/600',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
