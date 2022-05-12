void main(List<String> args) {
  final user1 = User('Eldi');

  user1.sayName(user1.name);
  user1.sayAbout();

  /// {cascade} methodtor bit objecktin methodtorun katary menen
  /// chakyruu uchurunda koldonobuz
  /// jogorudagyny {cascade} menen jazaly
  ///
  /// user1.sayName(user1.name);
  /// user1.sayAbout();
  ///      ||
  /// user1
  ///  ..sayName(user1.name)
  ///  ..sayAbout();
  /// 
  user1
    ..sayName(user1.name)
    ..sayAbout();
}

/// kaysy bit class ty mixin menen keneykibiz kelse
/// (with) di koldonobuz extends syaktuu mixin uchun

class User with UserMixin {
  User(this.name);

  final String name;

  @override
  void sayAbout() {
    print('$name is flutter developer');
  }
}

/// mixin ozuno callback fuction jana parametreler ala alat
/// ozunon ulgu tuzulboit abstract class syyaktuu
/// birok parametrelerdi abaylap beruu kerek
/// eger mixindin ichindeki methodtun denesi jok bolso
/// keneugen class ka beruu mildettendirilet

mixin UserMixin {
  void sayAbout();

  void sayName(String name) {
    print('My name is $name');
  }
}
