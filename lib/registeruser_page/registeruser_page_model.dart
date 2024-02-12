import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registeruser_page_widget.dart' show RegisteruserPageWidget;
import 'package:flutter/material.dart';

class RegisteruserPageModel extends FlutterFlowModel<RegisteruserPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldMob widget.
  FocusNode? textFieldMobFocusNode1;
  TextEditingController? textFieldMobController1;
  String? Function(BuildContext, String?)? textFieldMobController1Validator;
  // State field(s) for TextFieldMob widget.
  FocusNode? textFieldMobFocusNode2;
  TextEditingController? textFieldMobController2;
  String? Function(BuildContext, String?)? textFieldMobController2Validator;
  // State field(s) for DropDownMob widget.
  String? dropDownMobValue;
  FormFieldController<String>? dropDownMobValueController;
  // State field(s) for TextFieldMob widget.
  FocusNode? textFieldMobFocusNode3;
  TextEditingController? textFieldMobController3;
  String? Function(BuildContext, String?)? textFieldMobController3Validator;
  // State field(s) for TextFieldMob widget.
  FocusNode? textFieldMobFocusNode4;
  TextEditingController? textFieldMobController4;
  String? Function(BuildContext, String?)? textFieldMobController4Validator;
  // Stores action output result for [Custom Action - emailAutomatic] action in ButtonWeb widget.
  String? actionTestre;
  // State field(s) for TextFieldWeb widget.
  FocusNode? textFieldWebFocusNode1;
  TextEditingController? textFieldWebController1;
  String? Function(BuildContext, String?)? textFieldWebController1Validator;
  // State field(s) for TextFieldWeb widget.
  FocusNode? textFieldWebFocusNode2;
  TextEditingController? textFieldWebController2;
  String? Function(BuildContext, String?)? textFieldWebController2Validator;
  // State field(s) for DropDownWeb widget.
  String? dropDownWebValue;
  FormFieldController<String>? dropDownWebValueController;
  // State field(s) for TextFieldWeb widget.
  FocusNode? textFieldWebFocusNode3;
  TextEditingController? textFieldWebController3;
  String? Function(BuildContext, String?)? textFieldWebController3Validator;
  // State field(s) for TextFieldWeb widget.
  FocusNode? textFieldWebFocusNode4;
  TextEditingController? textFieldWebController4;
  String? Function(BuildContext, String?)? textFieldWebController4Validator;
  // Stores action output result for [Custom Action - emailAutomatic] action in ButtonWeb widget.
  String? actionTestreCopy;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldMobFocusNode1?.dispose();
    textFieldMobController1?.dispose();

    textFieldMobFocusNode2?.dispose();
    textFieldMobController2?.dispose();

    textFieldMobFocusNode3?.dispose();
    textFieldMobController3?.dispose();

    textFieldMobFocusNode4?.dispose();
    textFieldMobController4?.dispose();

    textFieldWebFocusNode1?.dispose();
    textFieldWebController1?.dispose();

    textFieldWebFocusNode2?.dispose();
    textFieldWebController2?.dispose();

    textFieldWebFocusNode3?.dispose();
    textFieldWebController3?.dispose();

    textFieldWebFocusNode4?.dispose();
    textFieldWebController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
