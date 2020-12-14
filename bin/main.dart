import 'package:algorithms_third_lab_wedding/graph.dart';

void main(List<String> arguments) {
  var graph = Graph(9);
  graph.addEdge(1, 2);
  graph.addEdge(2, 4);
  graph.addEdge(3, 5);
  graph.addEdge(6, 7);
  graph.addEdge(7, 8);
  print(graph.adjasencyLists);
  print(graph.connectedComponents());
}
