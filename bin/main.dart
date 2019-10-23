// Challenge 1
// Write failing test cases for the next two challenges

// Challenge 2
// All Pairs that Sum to Target
// Create a function that returns all pairs of numbers in an list that sum to a target.
// Sort the pairs in ascending order with respect to the smaller number,
// then order each pair in this order: [smaller, larger].
// Examples
// allPairs([2, 4, 5, 3], 7) ➞ [[2, 5], [3, 4]]
/// 2 + 5 = 7, 3 + 4 = 7

List<List> allPairs(List numbers,int target){
  List<List> pairsOfLists = List<List>() ;
  for(int i = 0; i < numbers.length;i++){
    for(int j = i+1;j < numbers.length;j++){
      List pairs = List();
      if(numbers[i] + numbers[j] == target){
        pairs.addAll([numbers[i],numbers[j]]);
        pairs.sort();
        pairsOfLists.add(pairs);
        numbers[i] = target + 1;
        numbers[j] = target + 1;
      }
    }
  }
  pairsOfLists.sort((List a,List b) => a[0].compareTo(b[0]));
  return pairsOfLists;
}

// Challenge 3
// Almost Sorted Sequence
// An almost-sorted sequence is a sequence that is strictly increasing
// if you remove a single element from the list
// (no more, no less). Write a function that returns true if an list is almost-sorted,
// and false otherwise.
/// For example, if you remove 80 from the first example,
/// it is perfectly sorted in ascending order.
// Examples
// almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) ➞ true
bool almostSorted(List numbers){
  int count = 0;
  if(numbers.length>2){
    for(int i = 0; i < numbers.length-1; i++){
      if(numbers[i]>numbers[i+1]){
        count ++;
        if(count>1){
          return false;
        }
      }
    }
  }
  return count ==1;
}

main() {
  print(allPairs([3, 4, 5, 2], 7));
  print(allPairs([2, 2, 5, 3], 7));
  print(allPairs([3, 3, 3, 3], 6));
  print(allPairs([3, 3, 3, 3], 5));
  print(allPairs([3, -3, 3, 2], -1));
  print(allPairs([], 5));
  print(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41]));
  print(almostSorted([1]));
  print(almostSorted([1,1]));
  print(almostSorted([1,0]));
  print(almostSorted([1,3,5,7,9,8,10]));
}
