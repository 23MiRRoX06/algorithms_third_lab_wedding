import 'package:algorithms_third_lab_wedding/algorithm/find_combination_number.dart';
import 'package:algorithms_third_lab_wedding/utils/app_utils.dart';
import 'package:test/test.dart';

void main() {
  test('test algorithm to count number of possible pairs from different tribes',
      () {
    var filePath =
        'C:/Users/mirro/Projects/DartProjects/algorithms_third_lab_wedding/resources/wedding_test_2.txt';
    var numberOfPossiblePairs = calculateNumberOfPairCombinations(
        createGraphFromValues(filePath).connectedComponents().sublist(1));
    expect(numberOfPossiblePairs, 4);
  });
}
