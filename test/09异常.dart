void main() {
  //异常捕获
  try {
    //抛出异常 throw
    throw new FormatException('抛出异常');
  } on IntegerDivisionByZeroException {
    //指定异常类型 on
    print('by zero');
  } catch (e) {
    //需要异常对象用catch
    print(e);
  } finally {
    print('finally');
  }
}

//自定义异常
class MyException implements Exception {}
