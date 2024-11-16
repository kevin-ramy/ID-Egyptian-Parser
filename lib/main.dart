import 'dart:io';

import 'package:egyptian_id/egyptian_id_parser.dart';

void main() {
  print("Please enter your id");
  String idNumber = stdin.readLineSync()!; // Replace with a valid ID number
  String birthDate = EgyptianIdParserBase.extractBirthDate(idNumber);
  String governorate = EgyptianIdParserBase.extractGovernorate(idNumber);
  String gender = EgitgyptianIdParserBase.extractGender(idNumber);
  int years = EgyptianIdParserBase.calculateYears(idNumber);
  int months = EgyptianIdParserBase.calculateMonths(idNumber);
  int days = EgyptianIdParserBase.calculateDays(idNumber);

  print('Birth Date: $birthDate');
  print('Governorate: $governorate');
  print('Gender: $gender');
  print('Age: $years years, $months months, $days days');
}
