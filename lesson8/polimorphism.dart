/// {polimorphism} kop turduuluk
/// bir turdun kee bir kasir=etteri boyuncha
/// biri-birininen ayirmalangan tipter
/// birdey methodtoru parametreliri bolso da bashka bashka
/// funcsiyalardy atkara lat
void main() {
  User user1 = KgUserImpl();
  user1.sayName();
  user1 = TrUserimpl();
  user1.sayName();

  User user2 = KgUser('eldi');
  user2.sayName();
  user2 = TrUser('ELDI');
  user2.sayName();
}

/// {abstract} tan jaratylgandar child
abstract class User {
  User(this.name);
  final String name;

  void sayName();
}

/// parenti abstract User bolgon class type User
class KgUserImpl implements User {
  @override
  String get name => 'Manas';

  @override
  void sayName() {
    print('menin atim $name Impl');
  }
}

/// parenti abstract User bolgon class type User
class TrUserimpl implements User {
  @override
  String get name => 'Oguz';

  @override
  void sayName() {
    print('benim ismim $name Impl');
  }
}

class KgUser extends User {
  KgUser(super.name);

  @override
  void sayName() {
    print('menin atim $name');
  }
}

class TrUser extends User {
  TrUser(super.name);

  @override
  void sayName() {
    print('benim ismim $name');
  }
}
