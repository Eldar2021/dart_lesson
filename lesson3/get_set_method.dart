void main() {
  final user1 = Insan('Eldiiar', DateTime(2000, 10, 17), 'Kyrgyz', false, null);
  user1.checkMarried = true;

  user1.taanysh();
}

class Insan {
  Insan(
    this.name,
    this.birthday,
    this.national,
    this.isDied,
    this.deiDay,
  );

  final String name;
  final DateTime birthday;
  final String national;
  final bool isDied;
  late final DateTime? deiDay;
  late bool? isMarried;

  void set checkMarried(bool val) => isMarried = val;

  num get life {
    if (isDied && deiDay != null) {
      return (deiDay!.difference(birthday).inDays / 365);
    } else {
      return (DateTime.now().difference(birthday).inDays / 365);
    }
  }

  void taanysh() {
    print("""
Салам Менин атым $name. мен $birthday туулганмын.
Менин улутум $national.
${isDied ? 'мен ушул $deiDay убакытта өлгөм ' : 'мен учурда жашап жатам'}.
менин жашым $life.
мен $isMarried.
""");
  }
}
