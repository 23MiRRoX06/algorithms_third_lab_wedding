import 'dart:io';

import 'package:algorithms_third_lab_wedding/algorithm/find_combination_number.dart';
import 'package:algorithms_third_lab_wedding/utils/app_utils.dart';

void main(List<String> arguments) {
  print('Please, eneter full path for your test case');
  var filePath = stdin.readLineSync();
  var createdGraph = createGraphFromValues(filePath);
  print(calculateNumberOfPairCombinations(
      createdGraph.connectedComponents().sublist(1)));
}
