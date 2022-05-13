void main(List<String> args) {
  final res1 = kosh(10);
  print(res1);
  final res2 = kosh(null);
  print(res2);
}

dynamic kosh(int? a) {
  try {
    final val = a! + 10;
    // print(val);
    return val;
  } catch (e) {
    // print(e);
    return KoshException('eldiiyar null value berbe');
  }
}

class KoshException implements Exception {
  final String massage;

  KoshException(this.massage);

  @override
  String toString() {
    return massage;
  }
}
