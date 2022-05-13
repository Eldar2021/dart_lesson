typedef eldi = String Function(int data);

void main(List<String> args) {
  final f1 = func1('data');
  print(f1);
}

eldi func1(data) {
  return ((data) => '$data + eldi');
}

String Function(int data) func2(data) {
  return ((data) => '$data + eldi');
}
