void main(List<String> args) {
  final String res1 = say<String>('data');
  print(res1);
  final int res2 = say<int>(12);
  print(res2);
  final bool res3 = say<bool>(true);
  print(res3);
}

T say<T>(T data) {
  return data;
}
