import '/flutter_flow/flutter_flow_util.dart';
import 'list06_user_searchnext_widget.dart' show List06UserSearchnextWidget;
import 'package:flutter/material.dart';

class List06UserSearchnextModel
    extends FlutterFlowModel<List06UserSearchnextWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
