import 'dart:io';

import 'package:algorithms_third_lab_wedding/graph.dart';

List<dynamic> readValuesFromTxt(String filePath) {
  var fileLines = File(filePath).readAsLinesSync();
  var edgesMap = <int, int>{};
  for (var line in fileLines) {
    if (line.length > 1) {
      var edgeVertexes =
          line.split(' ').map((vertex) => int.parse(vertex)).toList();
      edgesMap[edgeVertexes[0]] = edgeVertexes[1];
    }
  }
  var vertexNumber = <int>{...?edgesMap.keys, ...?edgesMap.values}.length;
  return <dynamic>[vertexNumber, edgesMap];
}

Graph createGraphFromValues() {
  print('Please, eneter full path for your test case');
  var filePath = stdin.readLineSync();
  var fileValues = readValuesFromTxt(filePath);
  var graph = Graph(fileValues[0] + 1);
  var edgesToAdd = fileValues[1];
  edgesToAdd.entries.forEach((edge) {
    graph.addEdge(edge.key, edge.value);
  });
  return graph;
}
