import '/flutter_flow/flutter_flow_util.dart';
import 'fridge_name_input_page_widget.dart' show FridgeNameInputPageWidget;
import 'package:flutter/material.dart';

class FridgeNameInputPageModel
    extends FlutterFlowModel<FridgeNameInputPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
