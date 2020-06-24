void main() {
  operation oper = add; //将函数分配给typedef变量
  oper(1, 2); //调用函数
  oper = sub;
  oper(1, 2);
  oper = divide;
  oper(1, 2);
}

typedef operation = Function(int a, int b); //定义typedef

void add(int a, int b) {
  print('a+b=${a + b}');
}

void sub(int a, int b) {
  print('a-b=${a - b}');
}

void divide(int a, int b) {
  print('a/b=${a / b}');
}

void calculator(int a, int b, operation oper) {
  oper(a, b);
}
