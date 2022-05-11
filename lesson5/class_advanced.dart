void main(List<String> args) {
  final user1 = _User('eldi', age: 12);

  if (user1.age is int) {
    if (user1.age! < 18) {
      print('evet kuchuk');
      user1.updMoneyWithStr("Som");
      print(user1.moneyType);
      user1.updMoneyWithNum(21);
      print(user1.moneyType);
    }
  }
}

class _User {
  final String name;
  int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  void updMoneyWithStr(String data) => moneyType = data;

  void updMoneyWithNum(int data) => moneyType = data;
}
