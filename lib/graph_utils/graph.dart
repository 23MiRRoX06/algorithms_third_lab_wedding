class Graph {
  int vertexNumber;
  List<List<int>> adjasencyLists;

  Graph(this.vertexNumber) {
    adjasencyLists = <List<int>>[];
    for (var i = 0; i < vertexNumber; i++) {
      adjasencyLists.add(<int>[]);
    }
  }

  void addEdge(int firstVertex, int secondVertex) {
    adjasencyLists[firstVertex].add(secondVertex);
    adjasencyLists[secondVertex].add(firstVertex);
  }

  void dfs(int vertex, List<bool> visited, List<int> connectedComponent) {
    visited[vertex] = true;
    connectedComponent.add(vertex);
    for (var neigbourVertex in adjasencyLists[vertex]) {
      if (!visited[neigbourVertex]) {
        dfs(neigbourVertex, visited, connectedComponent);
      }
    }
  }

  List<List<int>> connectedComponents() {
    var connectedComponents = <List<int>>[];
    var visited = <bool>[
      for (var vertex = 0; vertex < vertexNumber; vertex++) false
    ];
    for (var vertex = 0; vertex < vertexNumber; vertex++) {
      if (!visited[vertex]) {
        var connectedComponent = <int>[];
        dfs(vertex, visited, connectedComponent);
        connectedComponents.add(connectedComponent);
      }
    }
    return connectedComponents;
  }
}
