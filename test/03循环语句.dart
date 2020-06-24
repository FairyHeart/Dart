void main() {
  forTest();
  print("");
  forContinueTest();
}

void forTest() {
  outLoop:
  //  print("x");//标签名称和关联循环之间不应该有任何其他语句
  //A
  for (var i = 0; i < 3; i++) {
    print('i = $i');
    innerLoop:
    //B
    for (var j = 0; j < 3; j++) {
      print('i = $i j = $j');
      //      if (i == 1) break; //跳过B本次循环
      //      if (i == 0) break outLoop; //中断AB循环
      if (i == 1) break innerLoop; //跳过B本次循环
    }
  }
}

void forContinueTest() {
  outerLoop:
  for (var i = 0; i < 3; i++) {
    print('i = ${i}');

    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue outerLoop;
      }
      print('i = $i j = $j');
    }
  }
}
