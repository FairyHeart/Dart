import 'dart:isolate';

void foo(var msg) {
  print(msg);
}

void main() {
  Isolate.spawn((message) {
    foo("dd");
  }, null);
}
