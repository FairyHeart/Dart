import 'dart:io';

void main() {
  print(Directory.current.path);
  File file = new File(Directory.current.path + "\\contact.txt");
  Future<String> f = file.readAsString();
  f.then((data) => print(data));
  f.then((value) => null);
  print('read end');
}
