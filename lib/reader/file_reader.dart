import 'dart:io';

void readValuesFromTxt(String filePath) {
  var fileLines = File(filePath).readAsLinesSync();
  for (var line in fileLines) {
    if (line.length > 1) {
      line.split(' ').forEach((element) {
        print(element);
      });
    } else {
      print(line);
    }
  }
}
