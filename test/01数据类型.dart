/*
 * 数据类型
 */
void main() {
  testInt();
  testString();
  testBool();
  testList();
  testSet();
  testMap();
  testUnicode();
}

void testInt() {
  var x = 123;
  var y = 123.0;
  var z = '123';

  //int double 转string使用toString()方法
  x.toString();

  //String 转int
  int.parse(z);

  //String 转double
  double.parse(z);

  //int double相互转换
  y.toInt();
  x.toDouble();
}

//字符串
void testString() {
  //字符串
  var a = 'a';

  //单引号或双引号的三引号创建多行字符串
  var s1 = '''
              You can create
              multi-line strings like this one.
           ''';
  print(s1);

  //使用${expression}将表达式的值放在字符串中
  print('xyz $a');
}

//布尔类型
void testBool() {
  var fullName;
  var result = true;
  print(fullName == null);
}

//列表类型
void testList() {
  var list = [1, 2, 3];
  print(list[0]);
  //要创建一个编译时常量的列表，请在列表文字之前添加const：
  var constList = const [1, 2, 3];

  //Dart 2.3引入了扩展运算符(...)和空值感知扩展运算符(...?)，它提供了一种将多个元素插入集合的简洁方法
  var list1 = ['a', 'b', 3, true];
  var list2 = [1, 2, ...list1];
  print(list2);

  //如果扩展运算符右侧的表达式可能为null，则可以通过使用支持null的扩展运算符(...?)来避免异常
  var list3;
  var list4 = [...list1, ...?list3];
  print(list4);

  //Dart 2.3还引入了if和collection的集合，使用它在条件(if)和重复(for)构建集合，注意{}输出的结果
  var nav = [
    "x",
    if (list3 == null) {'null'},
    if (list3 == null) 'null'
  ];
  print(nav);

  var lists = ["#0", for (var i in list) '#$i'];
  print(lists);
}

//集合
void testSet() {
  var sets = {1, 2.5, 3, "d"}; //没有制定类型的集合可以放多种数据类型
  print(sets.elementAt(0) == 1); //elementAt(index)获取集合中的某个值

  var strSet = <String>{}; //创建空集合
  Set<String> strSet2 = {}; //创建空集合

  //创建一个编译时常量的集合，请在set文字之前添加const
  final constantSet = const {'fluorine', 'chlorine', 'bromine'};

  //集合常用方法add() addAll() remove() removeAll() clear等
}

//映射
void testMap() {
  var gifts = {"first": "one", "second": "two"}; //创建{key:value} 或者Map()
  var gifts2 = Map();
  gifts2['first'] = "one";
  gifts2["second"] = 'two';

  //要创建一个编译时常量的映射，请在map文字之前添加const关键字
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
}

//符文
void testUnicode() {
  var clapping = "abcd";
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes charCodes = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(charCodes));
}
