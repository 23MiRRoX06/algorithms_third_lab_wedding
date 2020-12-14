void calculateNumberOfPairCombinations(List<List<int>> tribes) {
  var numberOfpairCombinations = 0;
  var girlsByTribes = <List<int>>[];
  var boysByTribes = <List<int>>[];
  tribes.forEach((tribe) {
    girlsByTribes.add(tribe.where((member) => member % 2 == 0).toList());
    boysByTribes.add(tribe.where((member) => member % 2 == 1).toList());
  });
  boysByTribes.forEach((tribeBoys) {
    var numberOfGirlsCanPairWith = 0;
    girlsByTribes
        .where((tribeGirls) =>
            girlsByTribes.indexOf(tribeGirls) !=
            boysByTribes.indexOf(tribeBoys))
        .forEach((element) {
      numberOfGirlsCanPairWith += element.length;
    });
    numberOfpairCombinations += tribeBoys.length * numberOfGirlsCanPairWith;
  });
  print(numberOfpairCombinations);
}
