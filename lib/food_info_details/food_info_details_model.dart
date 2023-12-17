import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_info_details_widget.dart' show FoodInfoDetailsWidget;
import 'package:flutter/material.dart';

class FoodInfoDetailsModel extends FlutterFlowModel<FoodInfoDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (deleteFood)] action in Button widget.
  ApiCallResponse? deleteFoodResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
