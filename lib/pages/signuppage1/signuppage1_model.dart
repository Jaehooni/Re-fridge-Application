import '/flutter_flow/flutter_flow_util.dart';
import 'signuppage1_widget.dart' show Signuppage1Widget;
import 'package:flutter/material.dart';

class Signuppage1Model extends FlutterFlowModel<Signuppage1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for birthDay widget.
  FocusNode? birthDayFocusNode;
  TextEditingController? birthDayController;
  String? Function(BuildContext, String?)? birthDayControllerValidator;
  // State field(s) for birthMonth widget.
  FocusNode? birthMonthFocusNode;
  TextEditingController? birthMonthController;
  String? Function(BuildContext, String?)? birthMonthControllerValidator;
  // State field(s) for birthYear widget.
  FocusNode? birthYearFocusNode;
  TextEditingController? birthYearController;
  String? Function(BuildContext, String?)? birthYearControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    birthDayFocusNode?.dispose();
    birthDayController?.dispose();

    birthMonthFocusNode?.dispose();
    birthMonthController?.dispose();

    birthYearFocusNode?.dispose();
    birthYearController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
