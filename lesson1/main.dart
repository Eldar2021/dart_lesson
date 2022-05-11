// ignore_for_file: unused_local_variable

/// dart tili faylda main funksiasynan bashtayt
void main() {
  print('salam eldiyar');

  /// өзгөрулмөлөр - variblel
  String stringVarible = 'Edliyar';

  int integetVarible = 10;

  double doubleVarible = 10.1;

  bool boolVarible = true;

  /// баарынын өзгөрүлмөлөрдү {var} сөзү аркылуу бере алабыз
  var value = 'Kyrgyz'; // бул өзгөрүлмө string

  /// Бизде бир озгорулмого маани берип бирок ал эч качан озгорбосо
  /// final const
  final fValue = 100;
  // fValue = 200; озгорто албайбыз!
  const cvalue = 100;
  // cvalue = 200; озгорто албайбыз!
  /*
  final менен const тун айырмасы const проект 
  окулганда тузулот да проектин акырана чейин аны колдонот
  final проектин ичинде качан чакарылганда тузулот lazy
  */
}
