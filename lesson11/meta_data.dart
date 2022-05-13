void main(List<String> args) {
  // ignore: deprecated_member_use_from_same_package
  final Elish t1 = Elish(12);
  print(t1);
  print(t1.say(12));
  final Eldiyar t2 = Eldiyar(12);
  print(t2);
  print(t2.say());
}

@Deprecated('bul kolduudan chygaryldy orduna Eldiyar koldano alasyz')
class Elish with Say {
  final int jash;

  Elish(this.jash);

  @override
  String toString() {
    return '${super.toString()} $jash';
  }
}

class Eldiyar {
  final int jash;

  Eldiyar(this.jash);
  @override
  String toString() {
    return '${super.toString()} $jash';
  }
}

extension toString on Eldiyar {
  String say() {
    return '$jash extension';
  }
}

mixin Say {
  String say(int jash) {
    return '$jash mixin';
  }
}
