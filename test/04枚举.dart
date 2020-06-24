enum Status { nomal, cancel, merge }

void main() {
  print(Status.values);

  Status.values.forEach((element) {
    print(element);
  });
}
