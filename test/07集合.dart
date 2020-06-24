void main() {
  testList();
  testSet();
  testMap();
  testQueue();
  testIterator();
}

void testList() {
  var lists1 = List(4);
  var lists2 = [1, 2, 3, 2];
  List<String> lists3 = new List();
  lists3.add('a');
}

void testSet() {
  Set numberSet = new Set();
  numberSet.add(100);
  numberSet.add(100); //不能重复添加，里面还是只会有一个值
  print(numberSet);

  Set number = new Set.from([1, 2, 3]);
  var number2 = {1, 2, 3};
  var number3 = Set.from([1, 2, 3]);
}

void testMap() {}

void testQueue() {}

//迭代集合
void testIterator() {
  var number = {1, 2, 3};
  var iter = number.iterator;
  while (iter.moveNext()) {
    print(iter.current);
  }

  number.forEach((element) {
    print(element);
  });
}
