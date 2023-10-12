import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

int? newCustomFunction(String selectedGroup) {
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
