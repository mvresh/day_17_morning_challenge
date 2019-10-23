import 'main.dart';

import "package:test/test.dart";

void main() {
  test("allPairs test 1", () {

    expect(allPairs([2, 4, 5, 3], 7), equals([[2, 5], [3, 4]]));
  });

  test("allPairs test 2", () {

    expect(allPairs([2, 2, 5, 3], 7), equals([[2, 5]]));
  });

  test("allPairs test 3", () {

    expect(allPairs([3, 3, 3, 3], 6), equals([[3, 3],[3, 3]]));
  });

  test("allPairs test 4", () {

    expect(allPairs([3, 3, 3, 3], 5), equals([]));
  });

  test("allPairs test 5", () {

    expect(allPairs([], 5), equals([]));
  });


  test("almostSorted test 1", () {
    expect(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41]), equals(true));
  });

  test("almostSorted test 2", () {
    expect(almostSorted([]), equals(false));
  });

  test("almostSorted test 3", () {
    expect(almostSorted([1]), equals(false));
  });

  test("almostSorted test 4", () {
    expect(almostSorted([1,1]), equals(false));
  });

  test("almostSorted test 5", () {
    expect(almostSorted([1,0]), equals(false));
  });


}