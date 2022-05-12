Future<void> main(List<String> args) async {
  print('a');

  Future.delayed(Duration(seconds: 1)); // kutturot
  Future.forEach([1, 2, 3, 4, 5, 6, 7], (int e) async {
    await Future.delayed(Duration(seconds: 1));
    print(e);
  });

  print('ab');
}
