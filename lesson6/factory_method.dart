void main(List<String> args) {
  final user1 = User('eldi', 1000);
  print('${user1.name}: ${user1.money} user1');

  final user2 = User.fromUser(user1);
  print('${user2.name}: ${user2.money} user2');

  print(user1 == user2);
}

class User {
  User(this.name, this.money);

  final String name;
  final int money;

  /// factory method fabrica siyaktuu syryo alat da
  /// jany object jaratat

  factory User.fromUser(User user) {
    return User(user.name, user.money);
  }
}
