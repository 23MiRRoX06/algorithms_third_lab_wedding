import 'package:algorithms_third_lab_wedding/algorithm/algorithm.dart';
import 'package:algorithms_third_lab_wedding/utils/app_utils.dart';

void main(List<String> arguments) {
  var createdGraph = createGraphFromValues();
  calculateNumberOfPairCombinations(
      createdGraph.connectedComponents().sublist(1));
}
