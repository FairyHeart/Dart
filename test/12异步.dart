import 'dart:io';

void main() {
//  futureTest();
//  futureWaitTest();
//  asyncTest();
  streamTest();
}

void futureTest() {
  var file = new File(Directory.current.path + "\/contact.txt");
  Future<String> future = file.readAsString();
  future.then((value) {
    print(value);
  }, onError: (e) {
    print('onError $e');
  }).catchError((e) {
    print('catchError $e');
  }).whenComplete(() => {print('whenComplete')});
  print('read end');
}

void futureWaitTest() {
  Future.wait([
    // 2秒后返回结果
    Future.delayed(new Duration(seconds: 2), () {
      return 'hello';
    }),
    // 4秒后返回结果
    Future.delayed(new Duration(seconds: 4), () {
      return 'world';
    })
  ])
      .then((value) => {print('${value[0]} ${value[1]}')})
      .catchError((e) {})
      .whenComplete(() => {});
}

//先分别定义各个异步任务
Future<String> login(String userName, String pwd) {
  //用户登录
}

Future<String> getUserInfo(String id) {
  //获取用户信息
}

Future<bool> saveUserInfo(String userInfo) {
  // 保存用户信息
}

void callBackTest() {
  login("admin", "***").then((id) {
    //登录成功后通过，id获取用户信息
    getUserInfo(id).then((userInfo) {
      //获取用户信息后保存
      saveUserInfo(userInfo).then((value) => {
            //保存用户信息，接下来执行其它操作
          });
    });
  });
}

void futureCbTest() {
  login('admin', '***').then((id) {
    return getUserInfo(id);
  }).then((userInfo) {
    return saveUserInfo(userInfo);
  }).then((value) {
    //保存用户信息，接下来执行其它操作
  }).catchError((e) {});
}

void asyncTest() {
  void task() async {
    try {
      String id = await login('admin', '***');
      String userInfo = await getUserInfo(id);
      bool result = await saveUserInfo(userInfo);
      //执行接下来的操作
    } catch (e) {
      //错误处理
    }
  }
}

void streamTest() {
  Stream.fromFutures([
    // 1秒后返回结果
    Future.delayed(new Duration(seconds: 1), () {
      return "hello 1";
    }),
    // 抛出一个异常
    Future.delayed(new Duration(seconds: 2), () {
      throw AssertionError("Error");
    }),
    // 3秒后返回结果
    Future.delayed(new Duration(seconds: 3), () {
      return "hello 3";
    })
  ]).listen((event) {
    print(event);
  }, onError: (e) {
    print(e);
  }, onDone: () {});
}
