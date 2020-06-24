import 'dart:math';

void main() {
  test(1, 2);
  test2(1, value2: 2);
  test3(1);
  print(sum(5));
}

//可选的位置参数，请使用方括号[]
void test(int value, [int value2, int value3]) {
  print('value = $value, value2 = $value2, value3 = $value3');
}

//可选的命名参数
void test2(int value, {int value2, int value3}) {
  print('value = $value, value2 = $value2, value3 = $value3');
}

//带有默认值的可选参数
void test3(int value, [int value2 = 2, int value3 = 3]) {
  print('value = $value, value2 = $value2, value3 = $value3');
}

//递归函数
int sum(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num + sum(num - 1);
  }
}

//Lambda函数

