void main(List<String> args) {
  final user1 = User(12);
  user1.calculateMoney((res) {
    print(res);
  });

  // print(user1.money);
}

/// Call back method
class User {
  int money;

  User(this.money);

  void calculateMoney(void Function(int data) onCompleted) {
    money += 10;
    onCompleted(money);
  }
}
