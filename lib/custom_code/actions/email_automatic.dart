// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sendgrid_mailer/sendgrid_mailer.dart';

Future<String> emailAutomatic(
  String email,
  String? name,
) async {
  final mailer = Mailer(
      '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');
  final toAddress = Address('fredsoncostaa@gmail.com');
  final fromAddress = Address('quantumtt.startup@gmail.com');
  final content = Content('text/plain', 'Hello World!');
  final subject = 'Hello Subject!';
  final personalization = Personalization([toAddress]);

  return 'fredsoncostaa@gmail.com';
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
