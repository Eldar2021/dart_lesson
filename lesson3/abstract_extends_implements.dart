void main() {
  final user1 = UserExtends('Eldi', 1200);
  user1.say();

  final bankUser1 = BankUserExtends(12, 'Oguz', 1320);
  bankUser1.say();
  bankUser1.sayCode();

  final userImpl = UserImpl('Iskender', 3213);
  userImpl.say();
}

// abstract class tar tushunuk gana ech kandai
// data tuzuugo bolboit
// jana ozunun abstract parametrelerin
// ozunon extends bolgon child balasyna otkorup beret
abstract class IUser {
  IUser(this.name, this.money);

  final String name;
  final int money;

  void say() {
    print('Ak-Bulak Bank $name: $money');
  }
}

/// bir class ka bashke classtyn kasietterin bergibiz kelse
/// bul classty al classtan extends etebiz
///
/// parant classtyn parametrelirin super methodu arkyluu berebiz
class UserExtends extends IUser {
  UserExtends(
    String name,
    int money,
  ) : super(name, money);
}

class BankUserExtends extends IUser {
  BankUserExtends(
    this.code,
    String name,
    int money,
  ) : super(name, money);

  final int code;

  void sayCode() {
    print('my code $code');
  }
}

/// implements parent classtyn baardyk kasietterin alat
/// methodtorun da kairadan jazyp chygyybuzdu talap kylat
class UserImpl implements IUser {
  final String nameImpl;
  final int moneyImpl;

  UserImpl(this.nameImpl, this.moneyImpl);

  @override
  void say() {
    print('Ak-Bulak Bank $name: $money Impl');
  }

  @override
  int get money => 320 + moneyImpl;

  @override
  String get name => 'Impl class $nameImpl';
}
