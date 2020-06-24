void main() {
  Car car = new Car('法拉利');
  new Car.name("type") //级联运算符(..)
    ..run()
    ..type = 'd';
  car.run();
  car.setType = 'd';
  print(car.type);
}

class Car {
  var type;

  Car(var type) {
    //构造函数
    this.type = type;
  }

  Car.name(this.type); //命名构造函数

  //定义一个getter
  String get typeValue {
    return type;
  }

  //定义一个setter
  set setType(String type) {
    this.type = 'new $type';
  }

  void run() {
    print('$type running');
  }
}
