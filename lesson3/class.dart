void main() {
  final user1 = Insan(
    'Eldiiar',
    DateTime(2000, 10, 17),
    'Kyrgyz',
    false,
    null,
  );

  user1.taanysh();

  // print(user1);
  // print(user1.name);
  // print(user1.birthday);
  // print(user1.national);
  // print(user1.isDied);
  // print(user1.deiDay);
  // print(user1.life);
}

class Insan {
  final String name;
  final DateTime birthday;
  final String national;
  final bool isDied;
  late final DateTime? deiDay;
  late final num life;

  Insan(
    this.name,
    this.birthday,
    this.national,
    this.isDied,
    this.deiDay,
  ) {
    userLife();
  }

  void userLife() {
    if (isDied && deiDay != null) {
      life = (deiDay!.difference(birthday).inDays / 365);
    } else {
      life = (DateTime.now().difference(birthday).inDays / 365);
    }
  }

  void taanysh() {
    print("""
Салам Менин атым $name. мен $birthday туулганмын.
Менин улутум $national.
${isDied ? 'мен ушул $deiDay убакытта өлгөм ' : 'мен учурда жашап жатам'}.
менин жашым $life.
""");
  }
}
