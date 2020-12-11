import 'dart:io';

import 'package:algorithms_third_lab_wedding/reader/file_reader.dart';

void main(List<String> arguments) {
  print('Please, enter the full path for your test file');
  var filePath = stdin.readLineSync();
  readValuesFromTxt(filePath);
}
