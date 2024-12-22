import '/flutter_flow/flutter_flow_util.dart';
import 'investmentinbox_widget.dart' show InvestmentinboxWidget;
import 'package:flutter/material.dart';

class InvestmentinboxModel extends FlutterFlowModel<InvestmentinboxWidget> {
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
