void main(List<String> args) {
  final user1 = User('name');

  final int a = 1;
  a.isOne();

  user1.taanysh();
}

class User {
  User(this.name);
  final String name;
}

/// extension ichine parametre method alal alat da
/// belgiluu bir objecterdi keneitet
extension SayName on User {
  void taanysh() {
    print(name);
  }
}

extension IsOne on int {
  void isOne() {
    if (this == 1) {
      print('yes it is One');
    } else {
      print('no it is not one');
    }
  }
}
