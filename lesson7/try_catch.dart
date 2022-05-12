void main(List<String> args) {
  kosh(val: 3);
  print('--------------------');
  kosh();
}

/// {try} araket kylyp kor
/// {catch (e)} eger bir kata bolse e-kata
/// {finally} ar kanday abalda da ishteit
void kosh({int? val}) {
  try {
    final value = val! + 1;
    print('my value is $value');
  } catch (e) {
    print('error is $e');
  } finally {
    print('yaa baykem chong ele jigitsin ozun dele koshup alsang bolmok');
  }
}
