// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> newCustomAction(String selectedGroup) async {
  // Add your function code here!
  if (selectedGroup == "A") {
    return 1;
  }
  if (selectedGroup == "B") {
    return 2;
  }
  if (selectedGroup == "C") {
    return 3;
  }
  return 1;
}
